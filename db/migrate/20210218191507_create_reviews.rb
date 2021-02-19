class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.references :cocktail

      t.timestamps
    end
  end
end
