class CreateGrumbls < ActiveRecord::Migration
  def change
    create_table :grumbls do |t|
      t.string :body
      t.string :author
    end
  end
end
