class UserTask < ApplicationRecord
    belongs_to :subtask
    belongs_to :user
end
