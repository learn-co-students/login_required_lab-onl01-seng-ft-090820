class SecretsController < ApplicationController
  before_action :current_user 

  # def new
  #   if !current_user.nil? 
  #   redirect_to '/secrets'
  # else  
  #   redirect_to '/login'
  # end 


  def show
    if !current_user.nil? 
      render :show
    else  
      redirect_to '/login'
    end 
  end 
end
