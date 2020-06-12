class Park < ApplicationRecord
  validates :name, :address, :website, :phone_number, :open, presence: true
end