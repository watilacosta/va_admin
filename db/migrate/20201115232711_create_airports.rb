class CreateAirports < ActiveRecord::Migration[6.0]
  def change
    create_table :airports do |t|
      t.string :icao
      t.string :name
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
