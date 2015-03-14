class AddCostToMenuItem < ActiveRecord::Migration
  def change
  	add_column :menu_items, :price, :integer
  	add_column :menu_items, :meal_type_id, :integer

  end
end
