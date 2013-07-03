class ApplicationController < ActionController::Base
    before_filter :authenticate_user!
     layout :layout_by_resource
  #before_filter :authenticate_user!
  
protect_from_forgery with: :exception
  protected

  def layout_by_resource
    if devise_controller?
      "Devise"
    else
      "application"
    end
  end
end
