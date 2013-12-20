class CreateMoonsTable < ActiveRecord::Migration
  def up
    create_table :moons do |t|
      t.string    :name
      t.integer   :planet_id
    end
  end

  def down
  end
end
