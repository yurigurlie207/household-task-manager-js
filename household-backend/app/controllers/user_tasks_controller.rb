class UserTasksController < ApplicationController
  
  def index
    usertasks = UserTask.all
    options = {
      include: [:subtask]
    }
    render json: UserTaskSerializer.new(usertasks, options)
  end

  def create
  end



  def destroy
    usertask = UserTask.find(params[:id])
    unless usertask.nil?
      usertask.destroy
      render json: UserTaskSerializer.new(UserTask.all)
    else
      render json: { error: "User Task not Found!" }, status: 404
    end
  end
 
end
