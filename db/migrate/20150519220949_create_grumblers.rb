class CreateGrumblers < ActiveRecord::Migration
  def change
    create_table :grumblers do |t|
    	t.string :author
    	t.string :body
    end
  end
end
