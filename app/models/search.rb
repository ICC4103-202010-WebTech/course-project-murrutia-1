class Search < ApplicationRecord
  def users
    @users ||= find_users
  end

  def events
    @events ||= find_events
  end

  def organizations
    @organizations ||= find_organizations
  end

  private

  def find_users
    users = User.order(:name)
    users = users.where("username LIKE ? OR full_name LIKE ? OR email LIKE ?", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%") if keyword.present?
    users
  end

  def find_events
    events = Event.order(:name)
    events = Event.joins(:user, :organization).where("events.location LIKE ? OR events.name LIKE ? OR events.description LIKE ? OR users.username LIKE ? OR users.full_name LIKE ? OR organizations.name LIKE ?", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%") if keyword.present?
    events
  end

  def find_organizations
    organizations = Organization.order(:name)
    organizations = Organization.where("name LIKE ? OR description LIKE ?" , "%#{keyword}%", "%#{keyword}%") if keyword.present?
    organizations

  end
end
