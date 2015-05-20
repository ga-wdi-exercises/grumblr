class AddTitleToGrumblers < ActiveRecord::Migration
  def change
  	add_column :grumblers, :title, :text
  end
end
