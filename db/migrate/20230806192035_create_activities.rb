class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.boolean :hiking
      t.boolean :sight_seeing
      t.boolean :beach
      t.boolean :boat_safari
      t.boolean :water_sports
      t.boolean :park_tour
      t.boolean :cultural_tour
      t.boolean :city_tour
      t.boolean :kid_activities

      t.timestamps
    end
  end
end
