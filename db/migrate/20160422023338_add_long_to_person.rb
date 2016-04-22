class AddLongToPerson < ActiveRecord::Migration
  def change
    add_column :people, :long, :float
  end
end
