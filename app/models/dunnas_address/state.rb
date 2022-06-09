module DunnasAddress
  class State < ApplicationRecord
    include Searchrable

    has_many :cities, inverse_of: :state, dependent: :destroy

    validates :name, :acronym, presence: true

    scope :ordered, -> { order(created_at: :desc) }
  end
end
