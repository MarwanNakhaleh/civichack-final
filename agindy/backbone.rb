require 'sinatra'
require 'rubygems'
require 'json'

set :views, "views"

get "/" do
	erb :index
end

get "/maps" do
	erb :maps
end

get "/about" do
	erb :about
end

get "/contact" do
	erb :contact
end

get "/violent_crime_by_year" do
	erb :violent_crime_by_year
end