require 'sinatra'
require 'rubygems'
require 'json'

set :views, "views"

get "/" do
	redirect "/heat"
end

get "/heat" do
	erb :heat
end