class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :destination
      t.date :arrival_date
      t.date :departure_date
      t.integer :number_of_passengers
      t.text :description
      t.integer :price
      t.string :url_image
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
