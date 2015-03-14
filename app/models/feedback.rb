class Feedback < ActiveRecord::Base
#Associations
belongs_to :city
belongs_to :branch
end
