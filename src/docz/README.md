# Steps

Based on the [getting started](https://www.docz.site/docs/getting-started) guide.

```bash
$ npm install docz react react-dom
# a lot of ERESOLVE, deprecated warns
added 2551 packages in 2m

327 packages are looking for funding
  run `npm fund` for details

$ nano package.json
{
  "name": "research",
  "private": true,
  "scripts": {
    "docz:dev": "docz dev",
    "docz:build": "docz build",
    "docz:serve": "docz build && docz serve"
  },
}
$ npm i

$ npm run docz:dev
# slow start
```
