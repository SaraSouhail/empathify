class CreateDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.text :address
      t.integer :experience_years
      t.string :field
      t.timestamps
    end
  end
end
