class Freebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.string :item_name
      t.integer :value
      t.integer :dav_id
      t.integer :companie_id
    end
  end
end
