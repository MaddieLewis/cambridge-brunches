class CreateColleges < ActiveRecord::Migration[5.2]
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :address
      t.float :cost
      t.text :our_review
      t.string :star_quote
      t.integer :rating
      t.string :picture_url

      t.timestamps
    end
  end
end
