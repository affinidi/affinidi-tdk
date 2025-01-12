import fs from 'fs'

let bundle = fs.readFileSync('./dist/web_bundle.js', 'utf-8')

const exportStart = bundle.indexOf('export {')
const exportStr = bundle.substring(exportStart)

const exportParts = exportStr.split('\n')
const assignmentStr = [exportParts[1], exportParts[2], exportParts[3]].map(item => {
  const [ shortClassName, originalClassName ] = item.split(' as ')
  return `var ${originalClassName} = ${shortClassName}`
    .replace(',', '')
    .replace('  ', '')
}).join('\n')

bundle = bundle.replace(exportStr, assignmentStr)

fs.writeFileSync('./dist/web_bundle.min.js', bundle)
