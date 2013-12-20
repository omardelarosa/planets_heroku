class Astronaut < ActiveRecord::Base
  has_many :planets, through: :voyages
  has_many :moons, through: :voyages
  # has_and_belongs_to_many :planets
  has_many :voyages
end