# frozen_string_literal: true

require 'bundler'
Bundler.require

$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'controller'
require 'gossip'
require 'router'
require 'view'

Router.new.perform
