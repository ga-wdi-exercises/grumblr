class AddAvatarUrlToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :avatar_url, :string
  end
end
