import path from 'path'
import { defineConfig } from 'vite'
import { nodePolyfills } from 'vite-plugin-node-polyfills'
// import { NodeGlobalsPolyfillPlugin } from '@esbuild-plugins/node-globals-polyfill'
// import { NodeModulesPolyfillPlugin } from '@esbuild-plugins/node-modules-polyfill'

export default defineConfig({
  // resolve: {
  //   alias: {
  //     crypto: 'crypto-browserify',
  //     stream: 'stream-browserify',
  //   },
  // },
  plugins: [nodePolyfills()],
  build: {
    minify: 'esbuild',
    target: 'es2020',
    // rollupOptions: {
    //   // external: ['@aws-sdk/client-cognito-identity-provider']
    // },
    lib: {
      entry: path.resolve(__dirname, 'src/index.ts'),
      name: 'AffinidiSDK',
      formats: ['es'],
      fileName: 'web_bundle'
    },
    commonjsOptions: {
      transformMixedEsModules: true
    },
  },
  esbuild: {
    legalComments: 'none',
    minifyIdentifiers: true,
    minifySyntax: false,
    minifyWhitespace: false,
  },
  optimizeDeps: {
    // esbuildOptions: {
    //   define: {
    //     global: 'globalThis',
    //   },
    //   // plugins: [NodeGlobalsPolyfillPlugin({ buffer: true, process: true }), NodeModulesPolyfillPlugin()],
    // },
    exclude: ['@aws-sdk/client-cognito-identity-provider']
  },
})
