namespace :db do
  task :model_queries => :environment do

    puts("Query 1: Get all events created by certain user.")
    result = Event.joins(user: {}).where(user_id:1).select(:name).distinct.map { |x| x.name  }
    puts(result)
    puts("EOQ")
    puts("")

    puts("Query 2: Get all users belonging to an organization.")
    result = Organization.joins(user_on_organizations: :user ).where(user_on_organizations: {organization_id: 1}).select(:username).distinct.map { |x| x.username }
    puts(result)
    puts("EOQ")
    puts("")

    puts("Query 3: Get all public events in an organization.")
    result = Event.joins(organization:{}).where(event_privacy:  0, organization_id: 2).select(:name).distinct.map { |x| x.name  }
    puts(result)
    puts("EOQ")
    puts("")

    puts("Query 4: Get all private events in an organization.")
    result = Event.joins(organization:{}).where(event_privacy:  1, organization_id: 1).select(:name).distinct.map { |x| x.name  }
    puts(result)
    puts("EOQ")
    puts("")

    puts("Query 5: Get all guests that have been invited to a certain event.")
    result = Event.joins(user_on_events: :user).where(user_on_events: {event_id: 4}).select(:username).distinct.map { |x| x.username }
    puts(result)
    puts("EOQ")
    puts("")

    puts("Query 6: Get all guests that have voted for a date option in a certain event.")
    result = Event.joins(date_votes: :user).where(date_votes: {event_id: 4}).select(:username).distinct.map { |x| x.username }
    puts(result)
    puts("EOQ")
    puts("")

    puts("Query 7: Get all comments written by users on a specific event.")
    result = Event.joins(comments: {}).where(comments: {event_id: 2}).select(:message).distinct.map { |x| x.message }
    puts(result)
    puts("EOQ")
    puts("")

    puts("Query 8: Get all comments written by a specific user on all events.")
    result = Event.joins(comments: {}).where(comments: {event_id: 2, user_id: 1}).select(:message).distinct.map { |x| x.message }
    puts(result)
    puts("EOQ")
    puts("")

    puts("Query 9: Get all users with administrative privileges in an organization.")
    result = Organization.joins(user_on_organizations: :user ).where(user_on_organizations: {organization_id: 1, user_role: 1}).select(:username).distinct.map { |x| x.username }
    puts(result)
    puts("EOQ")
    puts("")

    puts("Query 10: Get all users with administrative privileges in the system.")
    result = SystemAdministrator.joins(user: {}).where(system_administrators: {is_admin: 1}).select(:username).distinct.map { |x| x.username }
    puts(result)
    puts("EOQ")
    puts("")

  end
end