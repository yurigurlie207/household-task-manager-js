class UsersController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index, :new, :create]
  before_action :set_user!, only: [:show, :edit, :update, :destroy]
  #raise params.inspect/whatever.inspect for debugging

    def index
    end

    def new
      @user = User.new
    end
   
    def create
      @user = User.create(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to @user
      else
        render 'new'
      end
    end

    def show
      if session[:user_id]
        @user = User.find(session[:user_id])
        # binding.pry
        # @usertasks = UserTask.incomplete.where(user_id: @user.id)

      end
    end

    def edit
    end

    def update
      @user.update(user_params)

      if @user.save
        redirect_to @user
      else
        render :edit
      end
    end


    def destroy
      session.delete :user_id
      @user.destroy
     
      redirect_to home_path()
    end
  

    private
  
    def user_params
      params.require(:user).permit(:username, :firstname, :lastname, :email, :role, :birthdate, :password, :password_confirmation)
    end
   
    def require_login
      return head(:forbidden) unless session.include? :user_id
    end

    def set_user!
      @user = User.find(params[:id])
    end


end
