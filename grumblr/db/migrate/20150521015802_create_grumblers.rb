class CreateGrumblers < ActiveRecord::Migration
  def change
    create_table :grumblers do |t|
      t.string :body
      t.string :title
      t.string :avatar_url
      t.string :author
    end
  end
end
