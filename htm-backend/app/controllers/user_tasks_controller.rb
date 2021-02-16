class UserTasksController < ApplicationController
    before_action :set_usertask!, only: [:edit, :update]
  
    def index
        @usertasks = UserTask.all
    end

    def edit
    end

    def update
        @usertask.update(usertask_params)

      if @usertask.save
        redirect_to @usertask.subtask
      else
        render :edit
      end
    end


    private 

    def usertask_params
        params.require(:user_task).permit(:comment)
    end  

    def set_usertask!
        @usertask = UserTask.find(params[:id])
      end
 
end
