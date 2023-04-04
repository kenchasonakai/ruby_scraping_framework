require 'rubygems'
require 'bundler/setup'
require 'active_record'
require 'sqlite3'
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: "db/#{File.basename(File.expand_path('../../', __FILE__))}.sqlite3")
