require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
require 'active_support/all'
# require 'sinatra/reloader'

set :environment, :development

# models
require_relative 'models/astronaut'
require_relative 'models/planet'
require_relative 'models/moon'
require_relative 'models/voyage'


# config
require_relative 'config/environments'


get '/' do 
  @astronauts = Astronaut.all
  @planets = Planet.all
  @moons = Moon.all
  erb :index
end

post '/create' do 
  # WARNING: Overly Tricky Code
  model_name = params[:model]
  instance_name = params[:name]

  class_object = model_name.constantize
  # ex. Planet

  class_object.create(name: instance_name)
  # ex. planet = Planet.create(name: "Earth")

  redirect "/"
end

post '/voyage/create' do 
  astronaut_id = params[:astronaut_id].to_i
  planet_id = params[:planet_id].to_i
  moon_id = params[:moon_id].to_i

  voyage = Voyage.new

  voyage.astronaut_id = astronaut_id
  voyage.planet_id = planet_id
  voyage.moon_id = moon_id

  voyage.save

  redirect "/"
end