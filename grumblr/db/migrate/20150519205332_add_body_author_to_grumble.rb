class AddBodyAuthorToGrumble < ActiveRecord::Migration
  def change
    add_column :grumbles, :body, :string
    add_column :grumbles, :author, :string
  end
end
