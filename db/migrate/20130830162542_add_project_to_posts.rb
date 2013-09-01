class AddProjectToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :project, :boolean
  end
end
