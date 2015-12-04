require 'rubygems'
require 'sinatra'
require "sinatra/reloader"

configure do
  set :views,         File.dirname(__FILE__) + '/views'
  set :public_folder, File.dirname(__FILE__) + '/public'
end

get '/' do
  @host = ENV['CF_INSTANCE_IP'] || "192.168.0.0"
  @port = ENV['CF_INSTANCE_PORT'] || "9292"
  @index = ENV['CF_INSTANCE_INDEX'] || "0"

  erb :index
end
