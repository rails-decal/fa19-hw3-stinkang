class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :landmark
      t.string :population
      t.string :weather

      t.timestamps
    end
  end
end
