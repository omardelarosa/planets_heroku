class Voyage < ActiveRecord::Base
  belongs_to :astronaut
  belongs_to :planet
  belongs_to :moon
end