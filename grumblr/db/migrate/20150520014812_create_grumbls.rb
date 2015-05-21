class CreateGrumbls < ActiveRecord::Migration
  def change
    create_table :grumbls do |t|
      t.string :title
      t.text :body
      t.string :author
      t.string :avatar_url
    end
  end
end
