class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :image
      t.integer :post_id

      t.timestamps
    end
  end
end
