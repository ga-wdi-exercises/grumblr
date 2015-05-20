class AddAvatarUrlToGrumblers < ActiveRecord::Migration
  def change
  	add_column :grumblers, :avatar_url, :text
  end
end
