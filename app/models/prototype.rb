class Prototype < ApplicationRecord
  
  has_one_attached :image
  validates :image, presence: true
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy
end
