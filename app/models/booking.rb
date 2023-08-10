class Booking < ApplicationRecord
    belongs_to :package
    belongs_to :payment
  end
