class CreateDunnasAddressStates < ActiveRecord::Migration[7.0]
  def change
    create_table :dunnas_address_states do |t|
      t.string :name
      t.string :acronym
      t.string :time_zone
      t.string :region
      t.string :capital 
      t.string :code

      t.timestamps
    end
  end
end