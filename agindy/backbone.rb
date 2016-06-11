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

get "/geo" do
	#query = "https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=YOUR_API_KEY"
end