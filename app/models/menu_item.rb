class MenuItem < ActiveRecord::Base
#Associations
belongs_to :branch
has_many :meal_types

#Search Parameters
  searchable do
    # integer :id
    text :name, :stored => true
   end
end
