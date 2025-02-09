class CreateStops < ActiveRecord::Migration[7.1]
  def change
    create_table :stops do |t|
      t.string :Stop_Name
      t.decimal :GPS_X
      t.decimal :GPS_Y
      t.string :Front_Of_Card
      t.string :Back_Of_Card
      t.string :Hidden_Card
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
