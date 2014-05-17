class Iine < ActiveRecord::Base
  belongs_to :giver
  belongs_to :taker
end
