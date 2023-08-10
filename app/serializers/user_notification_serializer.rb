class UserNotificationSerializer < ActiveModel::Serializer
  attributes :id, :message, :read, :user, :event, :organizer, :organizer_email
  belongs_to :user
  belongs_to :event
  belongs_to :organizer
  def organizer_email
    object.organizer.email
  end
end  