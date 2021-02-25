
class StaticController < ApplicationController
    def home
        if session[:user_id] then
             redirect_to user_path(User.find(session[:user_id]))
        else
            render :home
        end
    end
end