module.exports = {
  extends: [
    './javascript',
    'plugin:@typescript-eslint/recommended-requiring-type-checking',
    'plugin:@typescript-eslint/recommended',
  ],
  parserOptions: {
    sourceType: 'module',
  },
  rules: {
    // Disallow unused vars, but allow any unused args before used args and any arg whose name starts with _
    'no-unused-vars': 'off',
    '@typescript-eslint/no-unused-vars': [
      'error',
      {
        vars: 'all',
        args: 'after-used',
        argsIgnorePattern: '^_',
        ignoreRestSiblings: true,
      },
    ],

    // It's valid to have async functions return or throw without an await
    'require-await': 'off',
    '@typescript-eslint/require-await': 'off',

    // Implementing an interface with noops should not require disabling this each time
    '@typescript-eslint/no-empty-function': 'off',
  },
  overrides: [
    {
      files: ['*.spec.ts', '*.spec.tsx', '*.test.ts', '*.test.tsx'],
      rules: {
        // Allow `any` to be used in tests
        '@typescript-eslint/no-explicit-any': 'off',

        // Allow accessing properties on `any` typed objects
        '@typescript-eslint/no-unsafe-member-access': 'off',
      },
    },
  ],
}
