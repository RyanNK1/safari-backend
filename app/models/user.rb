class User < ApplicationRecord
    validates :first_name, :last_name, :username, :email, presence: true
    validates :username, :email, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :username, format: { with: /\A[a-zA-Z0-9_]+\z/,
        message: "can only contain letters, numbers, and underscores" }
    validates :password, length: { minimum: 8 }, allow_nil: true
    validates :confirm_password, presence: true
    validates_confirmation_of :password
end
