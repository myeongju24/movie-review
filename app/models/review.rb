class Review < ApplicationRecord

  with_options presence: true do
    validates :title
    validates :summary
    validates :contents
  end

  validates :points_id, numericality: { other_than: 1 }

  belongs_to :user
  has_many :comments, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :point

end
