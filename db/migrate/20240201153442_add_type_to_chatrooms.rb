class AddTypeToChatrooms < ActiveRecord::Migration[7.1]
  def change
    add_column :chatrooms, :chatroom_type, :string
  end
end
