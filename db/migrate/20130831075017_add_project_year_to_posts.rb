class AddProjectYearToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :project_year, :date
  end
end
