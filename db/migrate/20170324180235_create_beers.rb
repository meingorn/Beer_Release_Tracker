class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :style
      t.float :abv
      t.string :description
      t.integer :brewery_id
      t.integer :account_id

      t.timestamps
    end
  end
end
