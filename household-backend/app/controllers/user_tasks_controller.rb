class UserTasksController < ApplicationController
  
  def index
    usertasks = UserTask.all
    options = {
      include: [:subtask]
    }
    render json: UserTaskSerializer.new(usertasks, options)
  end

  def create
    @subtask = Subtask.find(params[:id])
    @subtask.user_ids = subtask_params[:user_ids]
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


# def create
#   @subtask = Subtask.new(subtask_params.except(:user_ids))
#   @subtask.complete = false
  
#   if @subtask.save
#    @subtask.user_ids = subtask_params[:user_ids]
#    redirect_to @subtask
# else
#   render :new
# end
# end

