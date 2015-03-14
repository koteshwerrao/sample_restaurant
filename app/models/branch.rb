class Branch < ActiveRecord::Base
#Associations
belongs_to :city
has_many :feedbacks

#Search Parameters
  searchable do
    # integer :id
    text :name
   end
end
