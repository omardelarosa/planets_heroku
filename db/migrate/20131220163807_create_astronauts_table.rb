class CreateAstronautsTable < ActiveRecord::Migration
  def up
    create_table :astronauts do |t|
      t.string    :name
    end
  end

  def down
  end
end
