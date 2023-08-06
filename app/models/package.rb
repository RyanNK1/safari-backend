class Package < ApplicationRecord
    has_many :payments
    has_many :activities
    belongs_to :booking
    belongs_to :payment
end
