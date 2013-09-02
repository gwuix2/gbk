class StaticPagesController < ApplicationController
  def about
  end

  def projects
  	@projects = Post.where(:project => true).order("project_year DESC").all
    @project_groups = @projects.group_by(&:project_year)
  end

  def routing_error
  	redirect_to root_path, alert: "404: Nincs ilyen tartalom."
  end
end
