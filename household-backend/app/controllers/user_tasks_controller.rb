class UserTasksController < ApplicationController
  
  def index
    usertasks = UserTask.all
    render json: UserTaskSerializer.new(usertasks)
  end
 
end
