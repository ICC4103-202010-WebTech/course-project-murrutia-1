class UserOnOrganizationsController < ApplicationController
  before_action :set_user_on_organization, only: [:show, :edit, :update, :destroy]

  # GET /user_on_organizations
  # GET /user_on_organizations.json
  def index
    @user_on_organizations = UserOnOrganization.all
  end

  # GET /user_on_organizations/1
  # GET /user_on_organizations/1.json
  def show
  end

  # GET /user_on_organizations/new
  def new
    @user_on_organization = UserOnOrganization.new
  end

  # GET /user_on_organizations/1/edit
  def edit
  end

  # POST /user_on_organizations
  # POST /user_on_organizations.json
  def create
    @user_on_organization = UserOnOrganization.new(user_on_organization_params)

    respond_to do |format|
      if @user_on_organization.save
        format.html { redirect_to @user_on_organization, notice: 'User on organization was successfully created.' }
        format.json { render :show, status: :created, location: @user_on_organization }
      else
        format.html { render :new }
        format.json { render json: @user_on_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_on_organizations/1
  # PATCH/PUT /user_on_organizations/1.json
  def update
    respond_to do |format|
      if @user_on_organization.update(user_on_organization_params)
        format.html { redirect_to @user_on_organization, notice: 'User on organization was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_on_organization }
      else
        format.html { render :edit }
        format.json { render json: @user_on_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_on_organizations/1
  # DELETE /user_on_organizations/1.json
  def destroy
    @user_on_organization.destroy
    respond_to do |format|
      format.html { redirect_to user_on_organizations_url, notice: 'User on organization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_on_organization
      @user_on_organization = UserOnOrganization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_on_organization_params
      params.fetch(:user_on_organization, {})
    end
end
