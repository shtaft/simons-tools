export default {
  singleQuote: true,
  semi: false,
  trailingComma: 'all',
  tabWidth: 2,
  printWidth: 100,
  arrowParens: 'avoid',
  proseWrap: 'always',
  plugins: [require('@trivago/prettier-plugin-sort-imports')],
  importOrder: ['<THIRD_PARTY_MODULES>', '^([./]|@site/)'],
  importOrderSeparation: true,
  importOrderSortSpecifiers: true,
}
