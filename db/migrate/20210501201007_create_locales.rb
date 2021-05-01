class CreateLocales < ActiveRecord::Migration[6.1]
  def change
    create_table :locales do |t|
      t.float :long
      t.float :lat
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
