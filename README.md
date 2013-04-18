# Emblem::Sprockets

Integrate [Emblem.js](https://github.com/machty/emblem.js) with sprockets

## Installation

Add `gem 'emblem-sprockets'` to your application's Gemfile :

    gem 'emblem-sprockets'

And then execute:

    $ bundle

Tell emblem-sprockets about your sprockets environment:

    Emblem::Sprockets.integrate sprockets_environment

Now any templates ending in `.emblem` will be compiled as
Ember-Handlebars templates. If you need to compile your Emblem templates
with vanilla Handlebars, use the `.raw.emblem` extension.

## Upgrading to the latest Emblem

This gem is only responsible for integrating Emblem.js with Sprockets. Any
updates to the Emblem language itself can be pulled in via
 
    $ bundle update emblem-source

