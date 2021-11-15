class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :country
      t.references :user, null: false, foreign_key: true
      t.integer :price_per_night
      t.text :description

      t.timestamps
    end
  end
end
