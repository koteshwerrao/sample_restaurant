class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
     t.string :name
     t.integer :branch_id
     t.date :alloc_date
      t.timestamps null: false
    end
  end
end
