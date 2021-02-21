class Subtask < ApplicationRecord
  # include ActiveModel::Validations
  scope :incomplete, -> { where(complete: false) }
  # scope :unassigned, -> { joins(:user_tasks).where.not(user_tasks: { subtask_id: nil }) }

  # scope :unassigned, -> { joins("LEFT OUTER JOIN user_tasks as usertasks ON subtasks.id = usertasks.subtask_id").where('usertasks.subtask_id IS NULL') }

  scope :unassigned, -> { joins("LEFT OUTER JOIN user_tasks as usertasks ON subtasks.id = usertasks.subtask_id").where(usertasks: {subtask_id: nil} ) }


  belongs_to :task
  has_many :user_tasks, dependent: :destroy
  has_many :users, :through => :user_tasks

  validates :title, presence: true
  validates :estimated_duration, presence: true


end
