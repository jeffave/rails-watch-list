# Load the Rails application.
const { environment } = require('@rails/webpacker')
require_relative 'application'

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']
  })
)

module.exports = environment

# Initialize the Rails application.
Rails.application.initialize!
