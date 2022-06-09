module DunnasAddress
  class Address < ApplicationRecord
    include Searchrable

    belongs_to :addressable, polymorphic: true, optional: true
    belongs_to :city, optional: true
    belongs_to :state, optional: true

    scope :ordered, -> { order(created_at: :desc) }

    validates :street, :number, :district, :city_id, :state_id, :zip_code, presence: true
    validates :street, :complemento, length: { maximum: 60 }
    validates :number, length: { maximum: 10}
    validates :district, length: { maximum: 40}
    validates :zip_code, length: { is: 8}

    
  end
end
