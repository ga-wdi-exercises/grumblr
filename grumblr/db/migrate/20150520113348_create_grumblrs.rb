class CreateGrumblrs < ActiveRecord::Migration
  def change
    create_table :grumblrs do |t|
    	t.text :title
    	t.string :body
    	t.string :author
    	t.string :avatar_url
    	t.timestamps null: false
    end
  end
end
