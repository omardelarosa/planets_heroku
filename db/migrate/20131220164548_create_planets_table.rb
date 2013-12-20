class CreatePlanetsTable < ActiveRecord::Migration
  def up
    create_table :planets do |t|
      t.string    :name
    end
  end

  def down
  end
end
