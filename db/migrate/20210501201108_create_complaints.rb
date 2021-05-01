class CreateComplaints < ActiveRecord::Migration[6.1]
  def change
    create_table :complaints do |t|
      t.string :title
      t.string :description
      t.references :company, null: false, foreign_key: true
      t.references :locale, null: false, foreign_key: true

      t.timestamps
    end
  end
end
