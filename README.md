# Veri Gem

by [averissimo](http://www.github.com/averissimo)

## Description
Two functions to deep merge hash objects and convert any hash object to OpenStruct. These functions extend standard Hash object.

- deep_merge: based on [ActiveSupport](http://api.rubyonrails.org/v2.3.8/classes/ActiveSupport/CoreExtensions/Hash/DeepMerge.html)
- to_ostruct: convert deep hash to OpenStruct, based on [pmarreck GithubGist](https://gist.github.com/pmarreck/5349411)

### License
Released under GNU General Public License, Version 3

## How to use

Install by adding the line below to your Gemfile

    gem 'veri', github: 'averissimo/veri_gem'

Or by installing it manually

    $ git clone https://github.com/averissimo/veri_gem.git
    $ gem build veri.gemspec
    $ gem install ./veri-0.0.1.gem
(replace _"veri-0.0.1.gem"_ by corresponding version)

## Dependencies

- ostruct: OpenStruct library

## Testing

    $ rake test
