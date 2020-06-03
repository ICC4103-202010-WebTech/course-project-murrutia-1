class DateVotesController < ApplicationController
  before_action :set_date_vote, only: [:show, :edit, :update, :destroy]

  # GET /date_votes
  # GET /date_votes.json
  def index
    @date_votes = DateVote.all
  end

  # GET /date_votes/1
  # GET /date_votes/1.json
  def show
  end

  # GET /date_votes/new
  def new
    @date_vote = DateVote.new
  end

  # GET /date_votes/1/edit
  def edit
  end

  # POST /date_votes
  # POST /date_votes.json
  def create
    @date_vote = DateVote.new(date_vote_params)

    respond_to do |format|
      if @date_vote.save
        format.html { redirect_to @date_vote, notice: 'Date vote was successfully created.' }
        format.json { render :show, status: :created, location: @date_vote }
      else
        format.html { render :new }
        format.json { render json: @date_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_votes/1
  # PATCH/PUT /date_votes/1.json
  def update
    respond_to do |format|
      if @date_vote.update(date_vote_params)
        format.html { redirect_to @date_vote, notice: 'Date vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @date_vote }
      else
        format.html { render :edit }
        format.json { render json: @date_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_votes/1
  # DELETE /date_votes/1.json
  def destroy
    @date_vote.destroy
    respond_to do |format|
      format.html { redirect_to date_votes_url, notice: 'Date vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_vote
      @date_vote = DateVote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def date_vote_params
      params.fetch(:date_vote, {})
    end
end
