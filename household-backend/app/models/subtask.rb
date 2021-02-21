class Subtask < ApplicationRecord
  # include ActiveModel::Validations
  scope :incomplete, -> { where(complete: false) }
  scope :unassigned, -> { joins(:user_tasks).where(user_tasks: { subtask_id: nil }) }



  belongs_to :task
  has_many :user_tasks, dependent: :destroy
  has_many :users, :through => :user_tasks

  validates :title, presence: true


end
