class SessionsController < ApplicationController
    
    def hello
        if !logged_in
          redirect_to login_path
        end
      end
    
    def new
    end
    
    def create
        if params[:name] && params[:name] != ""
            session[:name] = params[:name]
            redirect_to root_path
        else
            redirect_to login_path
        end
    end

    def destroy
        session.clear
        redirect_to login_path
    end
end