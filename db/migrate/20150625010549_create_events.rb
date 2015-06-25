class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :type
      t.datetime :event_date
      t.string :venue
      t.string :venue_street
      t.string :venue_city
      t.string :venue_state
      t.string :venue_zip
      t.string :venue_country
      t.text :venue_description
      t.string :dress_code
      t.references :wedding, index: true

      t.timestamps
    end
  end
end
