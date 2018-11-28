require 'sinatra'
require 'pry'
require 'sinatra/reloader'
also_reload('./lib/**/*.rb')
require './lib/Favorite'


get ('/') do
  @list = Favorite.all
  erb(:list)
end

get ('/item/:id') do
  @list = Favorite.find(params[:id])
  erb(:id)
end

post ('/') do
  name = params['name']
  new_item = Favorite.new(name)
  new_item.save
  @list = Favorite.all
  erb(:list)
end
