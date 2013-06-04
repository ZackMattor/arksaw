class CreateUserProjects < ActiveRecord::Migration
  def change
    create_table :projects_users do |t|
      t.integer :user_id
      t.integer :project_id
    end
    
    add_index :projects_users, [ :user_id, :project_id], unique: true
  end
end
