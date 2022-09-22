module.exports = {
  extends: ['eslint:recommended'],
  rules: {
    'no-unused-vars': [
      'error',
      {
        vars: 'all',
        args: 'after-used',
        argsIgnorePattern: '^_',
        ignoreRestSiblings: true,
      },
    ],
    'no-restricted-imports': [
      'error',
      {
        patterns: [
          {
            group: ['@workday/canvas-*/dist/*'],
            message: 'Do not import from the Canvas Kit dist folder.',
          },
        ],
      },
    ],
  },
}
