# Steps

Based on the [getting started](https://nextra.site/docs/docs-theme/start) guide.

```bash
$ npm i next react react-dom nextra nextra-theme-docs
# no warnings
added 326 packages in 25s

135 packages are looking for funding
  run `npm fund` for details

$ nano next.config.js
const withNextra = require('nextra')({
  theme: 'nextra-theme-docs',
  themeConfig: './theme.config.jsx'
})
 
module.exports = withNextra()

$ nano theme.config.jsx
export default {
  logo: <span>Research</span>,
  project: {
    link: 'https://github.com/under-the-hood/docs'
  }
}

$ nano pages/index.mdx
# Welcome to Nextra

Hello, world!

$ nano package.json
{
  "name": "research",
  "private": true,
  "scripts": {
    "dev": "next",
    "build": "next build",
    "start": "next start"
  },
}
$ npm i

$ npx next
# fast start
```
