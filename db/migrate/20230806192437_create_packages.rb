class CreatePackages < ActiveRecord::Migration[7.0]
  def change
    create_table :packages do |t|
      t.integer :activity_id
      t.string :package_name
      t.string :recommended_hotel
      t.string :location
      t.string :image
      t.integer :price_per_day
      t.string :description
      t.integer :maximum_no_of_people

      t.timestamps
    end
  end
end
