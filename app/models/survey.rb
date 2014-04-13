class Survey < ActiveRecord::Base
  belongs_to :creator, class_name: 'User'
  mount_uploader :filepath, Uploader
  has_many :questions
  has_many :participations
  has_many :takers, through: :participations
  has_many :answers, through: :participations
end
