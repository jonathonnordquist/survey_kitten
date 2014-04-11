class Participation < ActiveRecord::Base
  belongs_to :taker, class_name: 'User'
  belongs_to :survey
  has_many :answers
end
