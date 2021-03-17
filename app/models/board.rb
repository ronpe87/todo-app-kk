class Board < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  belongs_to :user
  has_many :tasks, dependent: :destroy

  def author_name
    user.display_name
  end

  def has_been_written?(task)
    tasks.exists?(id: task.id)
  end
end
