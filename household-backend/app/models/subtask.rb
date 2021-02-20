class Subtask < ApplicationRecord
  # include ActiveModel::Validations
  scope :incomplete, -> { where(complete: false) }

  belongs_to :task
  has_many :user_tasks, dependent: :destroy
  has_many :users, :through => :user_tasks

  validates :title, presence: true
  validates :notes, length: { maximum: 500 }

  # validates_with SubtaskusersValidator - decided not to build this, because user_ids isn't really part of a subtask record
  #also, functionally, there doesn't need to be a user assigned to a task or subtask, as it's just a decision 
  # the user hasn't made yet. better to just highlight it maybe with stylesheets if no users assigned

end
