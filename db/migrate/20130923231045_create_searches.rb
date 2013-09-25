class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :artist
      t.string :venue
      t.number :zipcode

      t.timestamps
    end
  end
end
