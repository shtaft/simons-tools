module.exports = {
  extends: ['plugin:compat/recommended', 'plugin:react/recommended'],
  parserOptions: {
    ecmaFeatures: {
      jsx: true,
    },
  },
  settings: {
    react: {
      version: 'detect',
    },
  },
  rules: {
    // Add support for emotion's `css` prop
    // https://github.com/jsx-eslint/eslint-plugin-react/issues/3384
    'react/no-unknown-property': ['error', { ignore: ['css'] }],
  },
}
