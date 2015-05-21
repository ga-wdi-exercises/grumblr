class AddTitleToGrumbles < ActiveRecord::Migration
  def change
    add_column :grumbles, :title, :string
  end
end
