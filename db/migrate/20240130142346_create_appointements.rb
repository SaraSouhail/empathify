class CreateAppointements < ActiveRecord::Migration[7.1]
  def change
    create_table :appointements do |t|
      t.references :user , null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
