class CreateAstronautsPlanetsTable < ActiveRecord::Migration
  def up
    # anonymous join table
    create_table :astronauts_planets do |t|
      t.integer   :astronaut_id
      t.integer   :planet_id
    end
  end

  def down
  end
end
