class CreateArticle < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.text :excerpt
      t.string :status
      t.attachment :thumb_image
      t.string :slug, index: {unique:true}

      t.timestamps
    end
  end
end
