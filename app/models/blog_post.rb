class BlogPost < ActiveRecord::Base
  attr_accessible :title, :content, :user_id, :project_id

  belongs_to :user

  belongs_to :project

end
