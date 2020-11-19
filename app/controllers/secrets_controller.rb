class SecretsController < ApplicationController
  before_action do
    redirect_to '/login' unless session[:name]
  end

  def show
  end

  private
  
  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
