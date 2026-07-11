const fs = require('fs/promises');
const path = require('path');
const os = require('os');
const { fork } = require('child_process');
const { mathjax } = require('mathjax-full/js/mathjax.js');
const { TeX } = require('mathjax-full/js/input/tex.js');
const { SVG } = require('mathjax-full/js/output/svg.js');

async function findIndexFiles(dir, results = []) {
    const entries = await fs.readdir(dir, {
        withFileTypes: true
    });

    for (const entry of entries) {
        const fullPath = path.join(dir, entry.name);

        if (entry.isDirectory()) {
            await findIndexFiles(fullPath, results);
        } else if (entry.name === 'index.html') {
            results.push(fullPath);
        }
    }

    return results;
}

function spawnWorker(file) {
    return new Promise((resolve, reject) => {
        const child = fork(__filename, ['--worker', file], {
            stdio: 'inherit'
        });

        child.on('error', reject);

        child.on('exit', code => {
            if (code === 0) {
                resolve();
            } else {
                reject(
                    new Error(
                        `Worker failed for ${file} (exit code ${code})`
                    )
                );
            }
        });
    });
}

async function runPool(files, concurrency) {
    let index = 0;

    async function workerLoop() {
        while (true) {
            const current = index++;

            if (current >= files.length) {
                return;
            }

            await spawnWorker(files[current]);
        }
    }

    const workers = [];

    for (let i = 0; i < concurrency; i++) {
        workers.push(workerLoop());
    }

    await Promise.all(workers);
}

async function processFile(file) {
    const {
        liteAdaptor
    } = require('mathjax-full/js/adaptors/liteAdaptor.js');
    const {
        RegisterHTMLHandler
    } = require('mathjax-full/js/handlers/html.js');
    const {
        AllPackages
    } = require('mathjax-full/js/input/tex/AllPackages.js');

    const adaptor = liteAdaptor();
    RegisterHTMLHandler(adaptor);

    const tex = new TeX({
        packages: AllPackages
    });

    const svg = new SVG({
        fontCache: 'local'
    });

    const html = mathjax.document('', {
        InputJax: tex,
        OutputJax: svg
    });

    let content = await fs.readFile(file, 'utf8');

    content = content.replace(
        /\$([\s\S]*?)\$|\\\[([\s\S]*?)\\\]/g,
        (_, inlineMath, displayMath) => {
            const math = inlineMath || displayMath;
						const display = !!displayMath;
            try {
                const node = html.convert(math, {
                    display
                });
								adaptor.setAttribute(node, 'aria-label', math);
								const svgHtml = adaptor.outerHTML(node);
								//const escaped = math
                //.replace(/&/g, '&amp;')
                //.replace(/</g, '&lt;')
                //.replace(/>/g, '&gt;');
								const tag = display ? 'div' : 'span';
								return `<${tag} class="math-wrap">${svgHtml}<${tag} class="math-source" style="position:absolute;width:1px;height:1px;overflow:hidden;clip:rect(0,0,0,0);white-space:nowrap;">${math}</${tag}></${tag}>`;
                //return adaptor.outerHTML(node);
            } catch (err) {
                console.error(
                    `MathJax error in ${file}:`,
                    err.message
                );

                return _;
            }
        }
    );

    await fs.writeFile(file, content);
		/*const css = adaptor.textContent(
				svg.styleSheet(html)
		);

		await fs.writeFile(
				path.join('./', 'mathjax.css'),
				css
		);*/

    console.log(`Processed ${file}`);
}

async function main() {
    if (process.argv[2] === '--worker') {
        const file = process.argv[3];

        try {
            await processFile(file);
            process.exit(0);
        } catch (err) {
            console.error(err);
            process.exit(1);
        }
    }

    const root = process.argv[2] || '.';

    const files = await findIndexFiles(root);

    console.log(
        `Found ${files.length} index.html files`
    );

    const concurrency =
        Math.min(os.cpus().length, files.length);

    console.log(
        `Using ${concurrency} worker processes`
    );

    await runPool(files, concurrency);

    console.log('Done');
}

main().catch(err => {
    console.error(err);
    process.exit(1);
});
