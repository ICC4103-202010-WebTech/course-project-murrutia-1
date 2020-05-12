class API::V1::CommentsController < ApiController
  before_action :set_api_v1_comment, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/comments
  # GET /api/v1/comments.json
  def index
    @comments = Comment.where(event_id: params[:event_id])
  end

  # GET /api/v1/comments/1
  # GET /api/v1/comments/1.json
  def show
  end

  # GET /api/v1/comments/new
  def new
    @api_v1_comment = Comment.new
  end

  # GET /api/v1/comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /api/v1/comments
  # POST /api/v1/comments.json
  def create
    @comment = Comment.new(comment_params)
    @comment.user = User.find(params[:user_id])
    @comment.event = Event.find(params[:event_id])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/comments/1
  # PATCH/PUT /api/v1/comments/1.json
  def update
    respond_to do |format|
      if @comment.update(api_v1_comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/comments/1
  # DELETE /api/v1/comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = Comment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def comment_params
    params.fetch(:comment, {}).permit(:id, :user, :event, :text)
  end
end
