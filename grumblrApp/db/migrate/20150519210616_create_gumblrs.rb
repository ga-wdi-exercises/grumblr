class CreateGrumblres < ActiveRecord::Migration
  def change
    create_table :grumblres do |t|
      t.text :body
      t.text :author

      t.timestamps null: false
    end
  end
end
