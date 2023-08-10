class Admin < ApplicationRecord
    validates :organizername, uniqueness: true
    validates :password_digest, presence: true
    validates :email, presence: true, uniqueness: true
    has_many :events, dependent: :destroy
    has_many_attached :images, dependent: :destroy
    has_secure_password
    has_many :notifications
end

