class AddPersonQualitiestoPerson < ActiveRecord::Migration
  def change
    add_column :people, :hair_color, :string
    add_column :people, :eye_color, :string
    add_column :people, :age, :string
    add_column :people, :weight, :string
    add_column :people, :height, :string
    add_column :people, :dob, :string
    add_column :people, :last_seen, :string
  end
end
