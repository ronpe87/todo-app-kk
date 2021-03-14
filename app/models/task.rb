class Task < ApplicationRecord
  belongs_to :board

  has_one_attached :eyecatch
  
  validates :content, presence: true
end
