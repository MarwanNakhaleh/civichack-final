require 'sinatra'
require 'rubygems'
require 'json'

set :views, "views"

get "/" do
	erb :index
end

get "/heat" do
	erb :heat
end

get "/heatmaps" do
	erb :heatmaps
end

get "/violent_crime_by_year" do
	erb :violent_crime_by_year
end