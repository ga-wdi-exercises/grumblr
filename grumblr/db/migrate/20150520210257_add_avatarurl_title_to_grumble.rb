class AddAvatarurlTitleToGrumble < ActiveRecord::Migration
  def change
    add_column :grumbles, :avatar_url, :string
    add_column :grumbles, :title, :string
  end
end
