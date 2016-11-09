require 'sinatra'
require_relative "sinatra_functions.rb"

#In Sinatra, a route is an HTTP method paired with a URL-matching pattern.
#Each route is associated with a block



get "/" do 
	erb :get_name
end

post '/name' do
	name = params[:user_name]
	redirect "/age?users_name=" + name #The is redirecting to a new "age" page that is called users_name 
	#plus the variable (name).
end

get "/age" do
	name = params[:users_name]
	erb :get_age, :locals => {:your_name => name}
end

post "/age" do
	age = params[:user_age]
	name = params[:user_name]
	redirect "/numbers?user_age=#{age}&user_name=#{name}"
end

get "/numbers" do
	age = params[:user_age]
	name = params[:user_name]
	erb :numbers, :locals => {:your_age => age, :your_name => name}
end

post "/numbers" do

	fav1 = params[:fav1].to_i
	fav2 = params[:fav2].to_i
	fav3 = params[:fav3].to_i
	sum = fav1 + fav2 + fav3
	
	name = params[:user_name]
	age = params[:user_age].to_i

	sum = fav_numbers_sum(fav1, fav2, fav3)

	conditional = age_num_conditional(age, sum)

end

# get "/sum" do
# 	age = params[]