class ChangeDateTypeForAppointement < ActiveRecord::Migration[7.1]
  def change
    change_column :appointements, :date, :datetime
  end
end
