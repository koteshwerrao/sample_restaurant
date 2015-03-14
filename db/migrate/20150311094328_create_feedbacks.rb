class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
     t.integer :city_id
     t.integer :branch_id
     t.text :review
     t.string :user_name
      t.timestamps null: false
    end
  end
end
