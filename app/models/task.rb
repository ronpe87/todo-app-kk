class Task < ApplicationRecord
  belongs_to :board

  has_one_attached :eyecatch
  has_many :comments, dependent: :destroy
  validates :content, presence: true
end
