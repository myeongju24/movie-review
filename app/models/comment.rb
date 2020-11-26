class Comment < ApplicationRecord
  validates :text, presence:true
  
  belongs_to :review
  belongs_to :user
end
