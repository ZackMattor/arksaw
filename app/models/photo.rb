class Photo < ActiveRecord::Base
  attr_accessible :description, :image, :project_id, :title, :uploaded_by

  belongs_to :project

  mount_uploader :image, ProjectPhotoUploader
end
