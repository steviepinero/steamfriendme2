class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :auth_callback
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def auth_callback
      # Gets the hash from omniauth and sets to auth
      auth = request.env['omniauth.auth']
      # p auth
      # create a current_user session with data to display on view
      session[:current_user] = { :nickname => auth.info['nickname'],
                                 :image => auth.info['image'],
                                 :uid => auth.uid,
                                 :location => auth.info['location'],
                                 :name => auth.info['name'],
                                 :profileurl => auth.info['urls']['Profile'],
                                 :status => auth.extra['raw_info']['profilestate']
                                            }
      # User.create(name: session[:current_user][:nickname])
      #stevie method of getting recent games in terminal
      #myRecentlyPlayed = Steam::Player.recently_played_games(myId, params: {})


      user =
        User.find_by(provider:auth['provider'], uid: auth['uid']) ||
        User.create_with_omniauth(auth)


      # sends api key through config/intializers
      Steam.apikey = ENV['STEAM_WEB_API_KEY']
      # Uses steamid data from current_user session
      myId = session[:current_user][:uid]
      # Gets recently played games for user of myId
      myRecentlyPlayed = Steam::Player.recently_played_games(myId, params: {})
      # Gets the total_count value of a player within the recently_played_games hash
      total_count = myRecentlyPlayed['total_count']
      byebug


      total_count.times do |i|
        # Sets instance of a new Game
        @game = Game.new
        @game.user_id = [:current_user][:uid]
        # puts myRecentlyPlayed["games"][i]["appid"]
        # Gets appid. Useful for string interpolation of image url.
        @game.appid = myRecentlyPlayed["games"][i]["appid"]
        # Gets game name.
        @game.game_name = myRecentlyPlayed["games"][i]["name"]
        # Gets entire playtime for game
        @game.playtime = myRecentlyPlayed["games"][i]["playtime_forever"]
        # Gets image icon url. Must be interpolated to view.
        @game.img_icon_url = myRecentlyPlayed["games"][i]["img_icon_url"]
        # saves data from games
        @game.save
      end

      # creates user using auth argument within create_with_omniauth in user model
      user =
      User.find_by(provider:auth['provider'], uid: auth['uid']) ||
      User.create_with_omniauth(auth)

      session[:user_id] = user.id
      redirect_to root_url, notice: "Signed in!"
    end

    # logout
    def destroy
      session[:user_id] = nil
      redirect_to root_url, notice: "Signed out!"
    end

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.fetch(:user, {})
    end
end
