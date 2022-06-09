class CreateDunnasAddressAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :dunnas_address_addresses do |t|
      t.string :street
      t.string :number
      t.string :zip_code
      t.string :district
      t.string :complement
      t.references :addressable, polymorphic: true, null: false
      t.references :city, null: false, foreign_key: {to_table: :dunnas_address_cities} 
      t.references :state, null: false, foreign_key: {to_table: :dunnas_address_states} 
      t.string :ibge
      t.string :gia
      t.string :ddd 
      t.string :siafi
      
      t.timestamps
    end
  end
end
