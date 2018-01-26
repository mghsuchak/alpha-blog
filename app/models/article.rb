class Article < ActiveRecord::Base
  
  belongs_to :user
  
  validates :user_id, presence: true
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 30, maximum: 800}
end