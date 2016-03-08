class SessionsController < ApplicationController
  #login
  def create
    # omniauth stores data in the request.env
    auth = request.env["omniauth.auth"]
    # even though this is a login action, an OAuth
    # login can be login *or* a registration.
    # if user exist, log them in
    # if user doesn't exist, create, then log them in
    user =
    User.find_by(provider:auth['provider'],
    uid: auth['uid']) ||
    User.create_with_omniauth(auth)

    byebug
    session[:user_id] = user.id
    redirect_to root_url, notice: "Signed in!"
  end

  # logout
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end
end
