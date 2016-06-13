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

get "/heat" do
	erb :heat
end

get "/crash" do
	erb :crash
end

get "/stats" do
	erb :stats
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

get "/robbery_by_year" do
	erb :robbery_by_year
end

get "/assault_by_year" do
	erb :assault_by_year
end

get "/violence" do
	erb :violence
end

not_found do
	erb :four_oh_four
end
