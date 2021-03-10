class Board < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  has_many :tasks
  belongs_to :user

  def author_name
    user.display_name
  end
end
