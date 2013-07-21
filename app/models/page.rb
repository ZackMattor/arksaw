class Page < ActiveRecord::Base
  attr_accessible :content, :index, :project_id, :title

  belongs_to :project
end
