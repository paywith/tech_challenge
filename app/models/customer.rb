class Customer < ApplicationRecord
  validates :name, :birth_date, presence: true
end
