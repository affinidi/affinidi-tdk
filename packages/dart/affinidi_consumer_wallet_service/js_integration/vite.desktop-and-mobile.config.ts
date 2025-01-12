import path from 'path'
import { defineConfig } from 'vite'
import { NodeGlobalsPolyfillPlugin } from '@esbuild-plugins/node-globals-polyfill'
import { NodeModulesPolyfillPlugin } from '@esbuild-plugins/node-modules-polyfill'

export default defineConfig({
  resolve: {
    alias: {
      crypto: 'crypto-browserify',
      stream: 'stream-browserify',
    },
  },
  plugins: [],
  build: {
    minify: 'esbuild',
    target: 'es2020',
    rollupOptions: {
      // external: ['@aws-sdk/client-cognito-identity-provider']
    },
    lib: {
      entry: path.resolve(__dirname, 'src/index.ts'),
      name: 'AffinidiSDK',
      formats: ['es'],
      fileName: 'desktop_and_mobile_js_bundle'
    },
    commonjsOptions: {
      transformMixedEsModules: true
    },
  },
  esbuild: {
    legalComments: 'none',
    minifyIdentifiers: false,
    minifySyntax: false,
    minifyWhitespace: false,
  },
  optimizeDeps: {
    esbuildOptions: {
      define: {
        global: 'globalThis',
      },
      plugins: [NodeGlobalsPolyfillPlugin({ buffer: true, process: true }), NodeModulesPolyfillPlugin()],
    },
    exclude: ['@aws-sdk/client-cognito-identity-provider']
  },
})
