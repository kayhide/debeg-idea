class Idea < ActiveRecord::Base
  has_many :comments
  has_many :iines
  belongs_to :user

  validates :title, length: { maximum: 100 }, presence: true
end
