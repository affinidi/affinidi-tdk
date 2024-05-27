const esbuild = require('esbuild');
const path = require('path');
const fs = require('fs-extra');

const distDir = path.resolve(__dirname, 'dist');

fs.copySync(path.resolve(__dirname, 'package.json'), path.resolve(distDir, 'package.json'));

esbuild.build({
    entryPoints: ['index.ts', 'helpers/*', 'validators/*'],
    bundle: false,
    minify: false,
    sourcemap: true,
    target: ['es6'],
    platform: 'browser',
    outdir: 'dist'
}).catch(() => process.exit(1));
