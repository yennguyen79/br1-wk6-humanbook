class AddAvatarToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :avatar, :string
    mount_uploader :avatar, AvatarUploader
  end
end
