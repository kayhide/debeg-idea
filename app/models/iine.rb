class Iine < ActiveRecord::Base
  belongs_to :giver, class_name: 'User'
  belongs_to :taker, class_name: 'User'
end
