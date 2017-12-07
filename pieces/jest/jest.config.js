module.exports = {
  "verbose": true,
  "transform": { ".(ts|tsx)": "<rootDir>/node_modules/ts-jest/preprocessor.js" },
  "testMatch": ["**/?(*.)(test|spec).ts"],
  "testEnvironment": "node",
  "moduleFileExtensions": [ "ts", "tsx", "js", "json" ],
  "coverageDirectory": ".coverage",
  "coverageReporters": ['text', 'text-summary'],
  "coverageThreshold": {
    "global": { statements: 90, lines: 90, functions: 90 }
  },
  "testPathIgnorePatterns": [
    "/build/",
    "/node_modules/"
  ]
}
