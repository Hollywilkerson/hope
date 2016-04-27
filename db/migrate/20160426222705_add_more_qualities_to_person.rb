class AddMoreQualitiesToPerson < ActiveRecord::Migration
  def change
    add_column :people, :last_seen_wearing_shirt_color, :string
    add_column :people, :last_seen_wearing_pant_type, :string
    add_column :people, :image, :string
    add_column :people, :paragraph, :string
  end
end
