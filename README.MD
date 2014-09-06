# Description #

This is a [Chef](http://www.getchef.com/chef/) repository to deploy your
infrastructure. You describe your Chef infrastructure using simple syntax in Ruby,
JSON or YAML. Execute [Spiceweasel](https://github.com/mattray/spiceweasel)
command-line tool to upload the infrastructure to your Chef server and deploy in an
automated way.

Spiceweasel will leverage [Berkshelf](http://berkshelf.com/v2.0/) to package
and validate your cookbooks, then generate `knife` commands that will
execute to deploy.

# Requirements #

Spiceweasel currently depends on `knife` to run commands for it, and requires
the `chef` gem for validating cookbook metadata. See setting up
Berkshelf is a dependency for the Cookbook `Berksfile` support. Infrastructure
files must end in `.rb`, `.json` or `.yml` to be processed.

Tested with the Chef 11.x series (previous versions of Chef may still work).
It is tested with Ruby 1.9.3. Version 2.0 was the last version
known to work with Ruby 1.8.7 due to the introduction of the Berkshelf
dependency in 2.1. If you want to use Ruby 2.0, you will need to use the Chef
11.6 (or later) gem.

# Installation #

