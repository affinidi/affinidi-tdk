import fs from 'fs'
import { gzipSync } from 'zlib'

let bundle = fs.readFileSync('./dist/desktop_and_mobile_js_bundle.js', 'utf-8')

bundle = bundle
  .replace('var extendStatics = function', 'function extendStatics') // assigning function to variable is failing
  .replace('    if (!(crypto$6 && crypto$6.subtle))', '    crypto$6.subtle = new SubtleCrypto2();\n    if (!(crypto$6 && crypto$6.subtle))') // setting subtle
  .replace('  if (typeof self === "undefined") {\n    return res;\n  }', '  // if (typeof self === "undefined") {\n    return res;\n  // }') // prevent browser detection
  .replace('export {\n  AuthenticationService,\n  PexProcessor,\n  WalletService\n};\n', '') // exports are failing

fs.writeFileSync('./dist/desktop_and_mobile_js_bundle.min.js', bundle)

const file = gzipSync(bundle)
fs.writeFileSync('./dist/desktop_and_mobile_js_bundle.gzip', file)
