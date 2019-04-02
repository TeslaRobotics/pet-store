class Ticket < ApplicationRecord
  belongs_to :service
  belongs_to :pet
end
