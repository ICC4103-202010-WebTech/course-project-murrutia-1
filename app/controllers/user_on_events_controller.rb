class UserOnEventsController < ApplicationController
  before_action :set_user_on_event, only: [:show, :edit, :update, :destroy]

  # GET /user_on_events
  # GET /user_on_events.json
  def index
    @user_on_events = UserOnEvent.all
  end

  # GET /user_on_events/1
  # GET /user_on_events/1.json
  def show
  end

  # GET /user_on_events/new
  def new
    @user_on_event = UserOnEvent.new
  end

  # GET /user_on_events/1/edit
  def edit
  end

  # POST /user_on_events
  # POST /user_on_events.json
  def create
    @user_on_event = UserOnEvent.new(user_on_event_params)

    respond_to do |format|
      if @user_on_event.save
        format.html { redirect_to @user_on_event, notice: 'User on event was successfully created.' }
        format.json { render :show, status: :created, location: @user_on_event }
      else
        format.html { render :new }
        format.json { render json: @user_on_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_on_events/1
  # PATCH/PUT /user_on_events/1.json
  def update
    respond_to do |format|
      if @user_on_event.update(user_on_event_params)
        format.html { redirect_to @user_on_event, notice: 'User on event was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_on_event }
      else
        format.html { render :edit }
        format.json { render json: @user_on_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_on_events/1
  # DELETE /user_on_events/1.json
  def destroy
    @user_on_event.destroy
    respond_to do |format|
      format.html { redirect_to user_on_events_url, notice: 'User on event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_on_event
      @user_on_event = UserOnEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_on_event_params
      params.fetch(:user_on_event, {})
    end
end
