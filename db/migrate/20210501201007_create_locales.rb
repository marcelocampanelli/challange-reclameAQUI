class CreateLocales < ActiveRecord::Migration[6.1]
  def change
    create_table :locales do |t|
      t.string :coordinates
      t.string :address
      t.string :state
      t.string :country
      t.string :postcode

      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
