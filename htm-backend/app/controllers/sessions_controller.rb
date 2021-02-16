class SessionsController < ApplicationController
  # skip_before_action :verify_authenticity_token, only: :create

  def new
  end

  def create
 
    if request.env['omniauth.auth'] #if third party auth (Github)
   
      session[:name] = request.env['omniauth.auth']['info']['nickname']
      session[:omniauth_data] = request.env['omniauth.auth']

      @user = User.find_by(username: session[:name])

      if !@user
        @user = User.create(username: session[:name], password: session[:name], email: session[:omniauth_data]['info']['email'] )
        if !@user.save
          flash[:notice] = "was not able to create new user based on GitHub credientials"
          return redirect_to new_user_path() 
        end
      end
      
    else #auth through app login

      @user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
      
      if !@user
        flash[:notice] = "wrong username and/or password"
        return render :new
      end

    end

    session[:user_id] = @user.id
    redirect_to @user
  end

  def destroy
    session.delete :user_id
    redirect_to home_path()
  end

end
