class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.string :address
      t.string :city
      t.string :zip

      t.timestamps null: false
    end
  end
end
