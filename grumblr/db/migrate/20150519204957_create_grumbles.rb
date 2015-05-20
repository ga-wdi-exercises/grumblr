class CreateGrumbles < ActiveRecord::Migration
  def change
    create_table :grumbles do |t|

      t.timestamps null: false
    end
  end
end
