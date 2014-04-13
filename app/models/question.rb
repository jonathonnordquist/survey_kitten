class Question < ActiveRecord::Base
  belongs_to :survey
  mount_uploader :filepath, Uploader
  has_many :choices
end
