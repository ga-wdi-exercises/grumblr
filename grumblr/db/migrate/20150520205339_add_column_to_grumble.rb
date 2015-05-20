class AddColumnToGrumble < ActiveRecord::Migration
  def change
    add_column :grumbles, :title, :string
    add_column :grumbles, :avatar_url, :string
  end
end
