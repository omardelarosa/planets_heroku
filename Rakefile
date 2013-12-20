require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
# require 'sinatra/reloader'

# models
require_relative 'models/astronaut'
require_relative 'models/planet'
require_relative 'models/voyage'
require_relative 'models/moon'

# config
require_relative 'config/environments'

namespace :db do 
  desc "adds starter data"
  task :seed do 
    mars = Planet.create(name: "Mars")
    jupiter = Planet.create(name: "Jupiter")
    phobos = Moon.create(name: "Phobos")
    neil = Astronaut.create(name: "Neil Armstrong")
    voyage = Voyage.new
    voyage.astronaut = neil
    voyage.planet = mars
    voyage.moon = phobos
    voyage.save!
  end
end