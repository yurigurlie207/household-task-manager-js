class UserTasksController < ApplicationController
  
  def index
    usertasks = UserTask.all
    options = {
      include: [:subtask]
    }
    render json: UserTaskSerializer.new(usertasks, options)
  end
 
end
