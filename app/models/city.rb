class City < ActiveRecord::Base
#Associations
has_many :branches
has_many :feedbacks

end
