class CreateDunnasAddressCities < ActiveRecord::Migration[7.0]
  def change
    create_table :dunnas_address_cities do |t|
      t.string :name
      t.references :state, null: false, foreign_key: {to_table: :dunnas_address_states}
      t.string :code
      t.timestamps
    end
  end
end