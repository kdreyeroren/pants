class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, precision: 20, scale: 4


      t.timestamps null: false
    end
  end
end
