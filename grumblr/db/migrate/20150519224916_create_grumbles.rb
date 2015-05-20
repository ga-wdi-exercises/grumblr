class CreateGrumbles < ActiveRecord::Migration
  def change
    create_table :grumbles do |t|
    	t.string :author
    	t.string :body
    end
  end
end
