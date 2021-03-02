class Board < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  belongs_to :user
end

def author_name
  user.display_name
end
