class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :slug
      t.string :doc

      t.timestamps
    end
  end
end
