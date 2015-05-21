class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :body
      t.string :author

      t.timestamps null: false
    end
  end
end
