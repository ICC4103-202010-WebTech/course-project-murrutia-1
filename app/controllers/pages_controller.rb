class PagesController < ApplicationController
  def home
    @events = Event.limit(5)

  end

  def search
    if params[:search].blank?
      redirect_to(root_path, alert: "Empty field!") and return
    else
      @parameter = params[:search].downcase

      @results_username = User.all.where("lower(username) LIKE :search", search: "%#{@parameter}%")

      @results_organization = Organization.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")

      @results_event = Event.all.where("lower(name) or lower(description) LIKE :search", search: "%#{@parameter}%")

      @results_event_creator = Event.joins(:user).where("events.user_id=users.id and lower(users.username) LIKE :search", search: "%#{@parameter}%")
    end
  end
end
