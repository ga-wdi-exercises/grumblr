class CreateGrumbles < ActiveRecord::Migration
  def change
    create_table :grumbles do |t|
      t.string :body
      t.string :author
      t.string :avatar_url
      t.string :title

      t.timestamps null: false
    end
  end
end
