class PhotosController < ApplicationController
  def index
    @project = Project.find params['project_id']
    @photos = Photo.where "project_id=#{@project.id}"
  end

  def new
    @project = Project.find params['project_id']
    @photo = Photo.new
  end

  def create
    @photo = Photo.create params[:photo]
    @photo.project_id = params[:project_id]

    if @photo.save
      redirect_to "/projects/#{params[:project_id]}/photos"
    end
  end
end
