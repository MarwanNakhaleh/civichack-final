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

get "/violence" do
	erb :violence
end

not_found do
	erb :four_oh_four
end
