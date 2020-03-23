class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string  :title
      t.string  :author
      t.string  :images_credit
      t.text    :teaser
      t.integer :category_id

      t.timestamps
    end
  end
end
