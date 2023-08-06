class Payment < ApplicationRecord
    has_many :packages
    has_many :bookings
end
