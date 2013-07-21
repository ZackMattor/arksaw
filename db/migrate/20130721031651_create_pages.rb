class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.integer :index
      t.integer :project_id

      t.timestamps
    end
  end
end
