class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image
      t.integer :uploaded_by
      t.integer :project_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
