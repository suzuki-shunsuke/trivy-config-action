# Contributing

Please follow [the OSS Contribution Guide](https://github.com/suzuki-shunsuke/oss-contribution-guide).

## Requirements

- Node.js
  - [prettier](https://prettier.io/): Formatter

Install cmdx by aqua.

```sh
aqua i -l
```

After you update code, you have to run the following things.

- Build TypeScript
- Test JavaScript Action
- Format code

## Node.js version

The verison of Node.js is managed with [.node-version](.node-version).

About .node-version, please see https://github.com/shadowspawn/node-version-usage

You can install Node.js using any tools that support .node-version.

## Build TypeScript

```sh
npm run build
```

## Test JavaScript Actions

```sh
npm t
```

## Format code

```sh
npm run fmt
```
