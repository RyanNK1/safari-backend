class Booking < ApplicationRecord
    has_many :packages
    belongs_to :payment
end
