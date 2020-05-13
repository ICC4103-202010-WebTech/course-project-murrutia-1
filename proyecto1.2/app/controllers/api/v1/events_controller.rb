class API::V1::EventsController < ApiController
  before_action :set_api_v1_event, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/events
  # GET /api/v1/events.json
  def index
    @events = Event.all
  end

  # GET /api/v1/events/1
  # GET /api/v1/events/1.json
  def show
  end

  # GET /api/v1/events/new
  def new
    @event = Event.new
  end

  # GET /api/v1/events/1/edit
  def edit
  end

  # POST /api/v1/events
  # POST /api/v1/events.json
  def create
    @event = Event.new(event_params)
    @event.user = User.find(params[:user_id])

    respond_to do |format|
    if @event.save
      format.html { redirect_to @event, notice: 'Event was successfully created.' }
      format.json { render :show, status: :created, location: @event }
      render :show, status: :created, location: @event
    else
      format.html { render :new }
      format.json { render json: @event.errors, status: :unprocessable_entity }
      render json: @event.errors, status: :unprocessable_entity
    end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    if @event.update(event_params)
      render :show, status: :ok, location: api_v1_event_path(@event)
    else
      render json: @event.errors, status: :unprocessable_entity
    end
     respond_to do |format|
    if @event.update(event_params)
       format.html { redirect_to @event, notice: 'Event was successfully updated.' }
       format.json { render :show, status: :ok, location: @event }
     else
       format.html { render :edit }
       format.json { render json: @event.errors, status: :unprocessable_entity }
     end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    head :no_content
    respond_to do |format|
     format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
     format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def event_params
    #params.fetch(:event, {})
    params.fetch(:event, {}).permit(:id, :title, :description, :user, :private)
  end
end