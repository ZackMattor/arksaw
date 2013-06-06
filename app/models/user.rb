class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_ids
  # attr_accessible :title, :body

  has_and_belongs_to_many :roles
  has_and_belongs_to_many :projects
  has_many :project_ownerships, :class_name => "Project", :foreign_key => "author_id"
  
  has_many :blogPosts

  #all role checks currently return true... not implemented yet!
  def role?(role)
    self.roles.where(:name => role).present?
  end

  def to_s
    email
  end
end
