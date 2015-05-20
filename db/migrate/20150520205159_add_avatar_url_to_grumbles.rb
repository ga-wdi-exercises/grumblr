class AddAvatarUrlToGrumbles < ActiveRecord::Migration
  def change
    add_column :grumbles, :avatar_url, :text
  end
end
