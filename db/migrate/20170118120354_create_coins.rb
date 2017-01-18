class CreateCoins < ActiveRecord::Migration[5.0]
  def change
    create_table :coins do |t|
      t.integer :money_value
      t.decimal :lat
      t.decimal :lng
      t.timestamps null: false
    end
  end
end