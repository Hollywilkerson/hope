class AddLatToPerson < ActiveRecord::Migration
  def change
    add_column :people, :lat, :float
  end
end
