ActiveAdmin.register BlogPosts do
  index do 
    column :title
    column :content 
    column :user
    default_actions 
  end 

  form do |f| 
    f.inputs "Blog Post" do 
      f.input :title 
      f.input :content 
      f.input :user 
    end 
    f.actions
  end
end
