class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
