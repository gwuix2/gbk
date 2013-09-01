class StaticPagesController < ApplicationController
  def about
  end

  def projects
  	@projects = Post.where(:project => true).order("project_year DESC").all
    @project_groups = @projects.group_by(&:project_year)
  end
end
