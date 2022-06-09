module DunnasAddress
  class City < ApplicationRecord
    include Searchrable
    
    belongs_to :state, optional: true

    validates :name, :state_id, presence: true

    scope :ordered, -> { order(created_at: :desc) }

    def dymanic_selectable
      {
        value: self.id.to_s,
        text: self.name
      }
    end

    def as_json(options = {})
      super({
        methods: [:dymanic_selectable]
      }.merge(options))
    end


  end
end
