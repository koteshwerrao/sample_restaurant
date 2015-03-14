class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
     t.string :name
     t.integer :city_id
     t.text :address
      t.timestamps null: false
    end
  end
end
