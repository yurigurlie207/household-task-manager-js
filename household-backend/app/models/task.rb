class Task < ApplicationRecord
    has_many :subtasks, dependent: :destroy
    has_many :users, :through => :subtasks
    # accepts_nested_attributes_for :subtasks 

    validates :title, presence: true
    validates :notes, length: { maximum: 500 }
 
    validates :deadline, date: { on_or_after: Proc.new { Time.now } }

    def subtask_attributes=(subtask_attributes)
            subtask = self.subtasks.build(title: subtask_attributes[:subtasks][:title])
            subtask.complete = false
            subtask.save 
            subtask.user_ids = subtask_attributes[:subtasks][:user_ids] 
    end

end
