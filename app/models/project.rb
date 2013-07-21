class Project < ActiveRecord::Base
  attr_accessible :author, :description, :name, :user_ids, :blog_post_ids

  has_and_belongs_to_many :users
  has_many :photos
  has_many :blog_posts
  has_many :pages

  belongs_to :project_owner, :foreign_key => "author", :class_name => "User"

  # B====D ~~~~~~
end
