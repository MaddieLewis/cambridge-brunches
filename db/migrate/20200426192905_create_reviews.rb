class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :rating
      t.string :title
      t.references :user, foreign_key: true
      t.references :college, foreign_key: true

      t.timestamps
    end
  end
end
