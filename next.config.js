// next.config.js
const withSass = require('@zeit/next-sass')
const withPurgeCss = require('next-purgecss')

const prodConfig = withSass(withPurgeCss({
  target: 'serverless',
  distDir: '.next',
  purgeCssPaths: [
    'src/pages/**/*',
    'src/components/**/*',
    'src/svg/**/*'
  ],
  purgeCss: {
    whitelist: () => []
  }
}))

const devConfig = {
  target: 'serverless',
  distDir: '.next'
}

module.exports = process.env.NODE_ENV === 'production' ? prodConfig : devConfig
