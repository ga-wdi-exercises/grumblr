class AddAvatarUrlToGrumbles < ActiveRecord::Migration
  def change
    add_column :grumbles, :avatar_url, :string
  end
end
