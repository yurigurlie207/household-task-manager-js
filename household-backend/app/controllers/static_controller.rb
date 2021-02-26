require 'rails/application_controller'

class StaticController < ApplicationController
    def home
        if session[:user_id] then
             redirect_to user_path(User.find(session[:user_id]))
        else
            render file: Rails.root.join('public', 'index.html')
        end
    end
end