class Park < ApplicationRecord
  validates :name, :address, :website, :phone_number, presence: true
  paginates_per 15

  scope :sorted_by_name, -> {(
    order(name: :asc)
  )}

  pg_search_scope :search_by_term, against: [:name, :address, :open], 
  using: {
    tsearch:{
      any_word: true, 
      prefix: true
    }
  }
end