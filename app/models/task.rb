class Task < ApplicationRecord
  belongs_to :board

  validates :content, presence: true
end
