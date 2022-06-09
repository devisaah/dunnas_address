class CreateDunnasAddressCities < ActiveRecord::Migration[7.0]
  def change
    create_table :dunnas_address_cities, id: DunnasAddress.active_uuid.present? ? DunnasAddress.active_uuid.to_sym : :integer do |t|
      t.string :name
      t.references :state, null: false, foreign_key: {to_table: :dunnas_address_states}, type: DunnasAddress.active_uuid.present? ? DunnasAddress.active_uuid.to_sym : :integer
      t.string :code
      t.timestamps
    end
  end
end