class User < ApplicationRecord
    validates :first_name, :last_name, :username, :email, presence: true
    validates :username, :email, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :username, format: { with: /\A[a-zA-Z0-9_]+\z/,
        message: "can only contain letters, numbers, and underscores" }
    validates :password, length: { minimum: 8 }, allow_nil: true
    has_secure_password
    validates :confirm_password, presence: true
    validates_confirmation_of :password
end
#     def generate_password_reset_token
#         update(password_reset_token: SecureRandom.urlsafe_base64, password_reset_sent_at: Time.zone.now)
#     end

#     def password_reset_token_expired?
#         password_reset_sent_at < 2.hours.ago
#     end    
# end
