class CreateVictims < ActiveRecord::Migration[7.1]
  def change
    create_table :victims do |t|
      t.references :user, null: false, foreign_key: true
      t.string :bullying_type

      t.timestamps
    end
  end
end
