# Tzatziki

Pieces of cucumber with yougurt sauce

[![Build Status](http://img.shields.io/travis/tnarik/tzatziki.svg)](https://travis-ci.org/tnarik/tzatziki)
[![Code Climate](http://img.shields.io/codeclimate/github/tnarik/tzatziki.svg)](https://codeclimate.com/github/tnarik/tzatziki)
[![Coveralls](http://img.shields.io/coveralls/tnarik/tzatziki.svg)](https://coveralls.io/r/tnarik/tzatziki)
[![RubyGems](http://img.shields.io/gem/v/tzatziki.svg)](http://rubygems.org/gems/tzatziki)
[![Gemnasium](http://img.shields.io/gemnasium/tnarik/tzatziki.svg)](https://gemnasium.com/tnarik/tzatziki)


## Installation

Add this line to your application's Gemfile:

    gem 'tzatziki'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tzatziki

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( http://github.com/<my-github-username>/tzatziki/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


# FROM LINTER

This Linter implemeentation is based on cucumber. Originally I started by using Cucumber as a tool directly, but recently changed (today, 1 day) I switched to use the Cucumber-Core (from cucumber-ruby-core, version 0.2). I didn't find too much documentation and I didn't want to use the MASTER in cucumber (preparing for version 2.0), so I got some files from there, hack a bit around the code trying to understand what is needed and, as a final result, ended up with some lines from the ```cuke``` spike, some support for *multiline arguments* (or so it seems), a copy of the ```cucumber/mappings.rb``` and a modified version of the ```DebugReport``` class to get my information going around.

I think I will now rest for a while (today was quite intense), and later on refocus on the features and steps themselves (at least a few of them).
This can be tested directly with ```cucumber``` or using my ```bin/kk```. In the future the idea is that my executable should allow for easy selection of feature sets for the different types of components, provide good coverage and be bundled in a nice way.

For the time being I am happy with the fact that it works (even if it produces lots of useless info).

# Some history
* 2014/03/12 - started (noon).
* 2014/03/13 - got features added, integration with cucumber-ruby-core. finally got everything working quite well evening at home
* 2014/03/14 - Renamed to 'cof' and CucumberOnField. Preparing gemifycation for testing in the solaris box before parking for later re-design/re-bundling.
* 2014/03/14 - gemification ready and tested. I think a better name would be 'Tzatziki', because it is made with chopped cucumbers, and it doesn't try to be a replacement for cucumber as a general tool. I need to think on:
   1. the name for the CLI tool: ki? tza? tzi? I think ```tza``` (The Zazen action)
   2. the name for the wrapper to tzatziki (a different/private gem with the features and steps)
* 2014/07/22 - preparing tzatziki once again (why did I stop this? ah, wait!)

