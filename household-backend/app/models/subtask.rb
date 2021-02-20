class Subtask < ApplicationRecord
  # include ActiveModel::Validations
  scope :incomplete, -> { where(complete: false) }

  belongs_to :task
  has_many :user_tasks, dependent: :destroy
  has_many :users, :through => :user_tasks

  validates :title, presence: true


end
