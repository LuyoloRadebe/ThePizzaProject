class StaticController < ApplicationController
  def homepage
  end

  def new
  end

  def reset
    current_user.api_key = nil
    current_user.api_token = nil
    current_user.save!
    redirect_to root_path
  end
end