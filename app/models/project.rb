class Project < ActiveRecord::Base
  attr_accessible :author, :description, :name, :user_ids

  has_and_belongs_to_many :users
  has_many :photos

  belongs_to :project_owner, :foreign_key => "author", :class_name => "User"

  # B====D ~~~~~~
end
