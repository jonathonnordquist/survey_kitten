class User < ActiveRecord::Base
  has_secure_password

  validates :email, uniqueness: :true

  has_many :created_surveys, class_name: 'Survey', foreign_key: :creator_id
  has_many :participations
  has_many :taken_surveys, through: :participations, source: :survey_id
  has_many :answers, through: :participations

end
