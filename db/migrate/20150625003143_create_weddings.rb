class CreateWeddings < ActiveRecord::Migration
  def change
    create_table :weddings do |t|
      t.string :betrothed_one
      t.string :betrothed_two
      t.date :date
      t.text :story

      t.timestamps
    end
  end
end
