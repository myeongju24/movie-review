class Review < ApplicationRecord

  with_options presence: true do
    validates :title
    validates :summary
    validates :contents
    validates :image
  end

  validates :points_id, numericality: { other_than: 11 }

  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :point

end
