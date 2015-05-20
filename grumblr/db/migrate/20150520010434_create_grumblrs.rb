class CreateGrumblrs < ActiveRecord::Migration
  def change
    create_table :grumblrs do |t|
      t.string :body
      t.string :author
    end
  end
end
