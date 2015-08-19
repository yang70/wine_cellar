class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :red_or_white?

  def red_or_white?(variety)
    white_wine = [ 'chardonnay', 'sauvignon blanc', 'semillon', 'moscato', 'pinot grigio', 'gewurztraminer', 'riesling', 'white', 'champagne']

    if white_wine.include?(variety)
      'https://s3.amazonaws.com/mywinebucket/generic-white.jpg'
    else
      'https://s3.amazonaws.com/mywinebucket/generic-red.jpg'
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    redirect_to '/unauthorized' unless current_user
  end

  def require_admin
    redirect_to '/unauthorized' unless current_user.admin?
  end

end
