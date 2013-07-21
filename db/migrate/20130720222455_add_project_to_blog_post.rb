class AddProjectToBlogPost < ActiveRecord::Migration
  def change
    add_column :blog_posts, :project_id, :integer
  end
end
