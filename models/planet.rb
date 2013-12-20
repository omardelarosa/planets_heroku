class Planet < ActiveRecord::Base
  has_and_belongs_to_many :astronauts
end