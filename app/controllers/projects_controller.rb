class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @project = Project.new
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
    authorize! :create, @project
    @project = Project.create params[:project]
    @project.project_owner = current_user

    if @project.save
      redirect_to "/projects/#{@project.id}"
    end
  end

  def update
    @project = Project.find(params[:id])

    authorize! :update, @project

    if @project.update_attributes(params[:project])
      redirect_to :action => 'show', :id => @project
    else
      @subjects = Subject.find(:all)
      render :action => 'edit'
    end
  end
end
