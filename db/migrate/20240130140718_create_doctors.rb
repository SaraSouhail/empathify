class CreateDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :doctors do |t|
      t.integer :experience_years
      t.string :field

      t.timestamps
    end
  end
end
