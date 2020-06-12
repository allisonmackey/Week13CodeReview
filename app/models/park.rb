class Park < ApplicationRecord
  validates :name, :address, :website, :phone_number, presence: true

  pg_search_scope :search_by_term, against: [:name, :address, :open], 
  using: {
    tsearch:{
      any_word: true, 
      prefix: true
    }
  }
end