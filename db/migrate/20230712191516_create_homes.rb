class CreateHomes < ActiveRecord::Migration[7.0]
  def change
    create_table :homes do |t|
      t.text :description
      t.integer :year_built
      t.integer :square_feet
      t.integer :bedrooms
      t.integer :bathrooms
      t.boolean :availability
      t.string :address
      t.decimal :price
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
