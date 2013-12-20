class CreateVoyagesTable < ActiveRecord::Migration
  def up
    # named join table
    create_table :voyages do |t|
      t.integer   :astronaut_id
      t.integer   :planet_id
      t.integer   :moon_id

      t.timestamps
    end
  end

  def down
  end
end
