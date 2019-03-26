require 'sinatra'
require 'sinatra/activerecord'
set :database, "sqlite3:project-name.sqlite3"
Dir[__dir__+"/models/*.rb"].each {|file| require file }