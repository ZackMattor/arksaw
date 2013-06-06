ActiveAdmin.register User do
  
end

ActiveAdmin.register User do
   index do 
    column :email
    default_actions 
  end 

  form do |f| 
    f.inputs "Blog Post" do 
      f.input :email
      f.input :roles 
    end 
    f.actions
  end
end
