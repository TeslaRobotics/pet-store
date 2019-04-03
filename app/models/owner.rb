class Owner < ApplicationRecord
  has_many :pets
  validates :birthday, presence: true
  validate :validate_age

  def validate_age
    if birthday > 18.years.ago 
      errors.add(:birthday, 'You should be over 18 years old.')
    end
  end
end
