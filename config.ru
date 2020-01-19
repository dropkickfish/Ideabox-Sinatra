$:.unshift File.expand_path("./../lib", __FILE__)

require 'bundler'
Bundler.require

require 'time'

require 'app'
run IdeaBoxApp

