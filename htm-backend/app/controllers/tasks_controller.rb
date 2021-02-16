class TasksController < ApplicationController
  before_action :set_task!, only: [:show, :edit, :update, :destroy]

    def index
    end

    def new
        @task = Task.new
        # @task.subtasks
    end

    def create
        @task = Task.new(task_params.except(:subtasks))
        @task.user_id = session[:user_id]
       
       
        if !@task.save || task_params[:subtasks][:title] == ""
       
          flash[:notice] = "Please enter a subtask title."
          render :new
        else
          @task.subtask_attributes=(task_params.slice(:subtasks))
          if !@task.subtasks.first.id 
            flash[:notice] = "You were not able to save a subtask, please add subtasks."
          end
          redirect_to @task
        end
       
    end
  
    def show
     
    end

    def edit
  
    end
 
    def update
      @task.update(task_params.except(:subtasks))

      if @task.save
        redirect_to @task
      else
        render :edit
      end
    end
 
    def destroy
      @task.destroy
      flash[:notice] = "You have successfully deleted task."
      redirect_to @user
    end
   

    private
  
    def task_params
      params.require(:task).permit(:title, :deadline, :notes, :subtasks=> {})
    end

    def set_task!
      @task = Task.find(params[:id])
    end
end
