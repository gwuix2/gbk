class AddDocumentTypeToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :doctype, :string
  end
end
