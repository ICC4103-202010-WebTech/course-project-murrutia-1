class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :delete]
  before_action :authenticate_user!
  # GET /users
  # GET /users.json
  def index
    @users = User.search(params[:search])
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user_on_event = UserOnEvent.all
    @event = Event.all
    @organization = Organization.all
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
    Comment.where(user_id: params[:id]).destroy_all
    Event.where(user_id: params[:id]).destroy_all
    MailBox.where(emitter: params[:id]).destroy_all
    MailBox.where(receiver: params[:id]).destroy_all
    CommentReply.where(user_id: params[:id]).destroy_all
    Organization.where(user_id: params[:id]).destroy_all
    DateVote.where(user_id: params[:id]).destroy_all
    UserOnEvent.where(user_id: params[:id]).destroy_all
    UserOnOrganization.where(user_id: params[:id]).destroy_all
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

  # Only allow a list of trusted parameters through.
  def user_params
    params.fetch(:user, {}).permit(:username, :full_name, :email, :age, :flyer, :search, :password, :admin)
  end
end

