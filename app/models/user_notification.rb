class UserNotificationSerializer < ActiveModel::Serializer
    belongs_to :user
    belongs_to :organizer
    belongs_to :event
    validates :message, presence: true
end    