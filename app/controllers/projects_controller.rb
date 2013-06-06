class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    authorize! :read, @projects
  end

  def show
    @project = Project.find params['id']
    @featuredPhotos = @project.photos.limit 3

    authorize! :read, @project
  end

  def new
    @project = Project.new
    authorize! :create, @project
  end

  def create
    @project = Project.create params[:project]
    @project.project_owner = current_user

    if @project.save
      redirect_to "/projects/#{@project.id}"
    end
  end
end
