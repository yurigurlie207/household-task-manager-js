class SubtasksController < ApplicationController 
    def unassigned
        subtasks = Subtask.unassigned
        render json: SubtaskSerializer.new(subtasks)
    end
end