class SubtasksController < ApplicationController 
    def index
       subtasks = Subtask.unassigned
       render json: SubtaskSerializer.new(subtasks)
    end
end


