class SessionsController < ApplicationController

  def new
  end

 def create
  if params[:provider] == "facebook"
    auth = request.env["omniauth.auth"]
    user = User.where(:provider => auth['provider'],
      :uid => auth['uid'].to_s).first || User.create_with_omniauth(auth)

  elsif params[:provider] == "google_oauth2"
    auth = request.env["omniauth.auth"]
    user = User.where(:provider => auth['provider'],
      :uid => auth['uid'].to_s).first || User.create_with_omniauth(auth)

  elsif params[:provider] == "linkedin"
    auth = request.env["omniauth.auth"]
    user = User.where(:provider => auth['provider'],
      :uid => auth['uid'].to_s).first || User.create_with_omniauth(auth)

  elsif params[:provider] == "twitter"
    auth = request.env["omniauth.auth"]
    user = User.where(:provider => auth['provider'],
      :uid => auth['uid'].to_s).first || User.create_with_omniauth(auth)
  end

  session[:user_id] = user.id
  redirect_to root_url, :notice => 'Signed in!'
end

def destroy
  session[:user_id] = nil
  redirect_to root_path
  flash[:notice] = "Logged out!"
end

end
