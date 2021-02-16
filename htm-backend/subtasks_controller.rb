class SubtasksController < ApplicationController
  before_action :set_subtask!, only: [:show, :edit, :update, :destroy]
  
    def index
    end

    def new
        @subtask = Subtask.new(task_id: params[:task_id])
    end

    def create
        @subtask = Subtask.new(subtask_params.except(:user_ids))
        @subtask.complete = false
        
        if @subtask.save
         @subtask.user_ids = subtask_params[:user_ids]
         redirect_to @subtask
      else
        render :new
      end
    end
    
    def show
    end

    def edit
    end

    def update
        @subtask.update(subtask_params)
         
      if @subtask.save
        redirect_to @subtask
      else
        render :edit
      end
    end


    def destroy
      @task = @subtask.task
      @subtask.destroy
      flash[:notice] = "You have successfully deleted task."
      redirect_to task_path(@task)
    end
  

    private
  
    def subtask_params
      params.require(:subtask).permit(:title,:complete, :notes, :priority, :estimated_duration, :actual_duration, :task_id, :user_ids => [])
    end

    def set_subtask!
      @subtask = Subtask.find(params[:id])
    end
end
