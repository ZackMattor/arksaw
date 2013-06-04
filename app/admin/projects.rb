ActiveAdmin.register Project do
   index do 
    column :name
    column :description 
    column :project_owner
    default_actions 
  end 

  form do |f| 
    f.inputs "Blog Post" do 
      f.input :name 
      f.input :description 
      f.input :users, as: :check_boxes

      f.input :project_owner
    end 
    f.actions
  end
 
end
