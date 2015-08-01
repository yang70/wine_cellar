class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.string :variety
      t.integer :year
      t.string :winery
      t.integer :quantity
      t.string :country
      t.string :region
      t.text :notes

      t.timestamps null: false
    end
  end
end
