require 'bundler/setup'
require 'pry'
require 'pry-nav'
require 'shotgun'
require 'erb'
require 'active_record'
require 'yaml'

Bundler.require

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details)
