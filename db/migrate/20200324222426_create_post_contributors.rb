class CreatePostContributors < ActiveRecord::Migration[6.0]
  def change
    create_table :post_contributors do |t|
      t.integer :post_id
      t.integer :contributor_id

      t.timestamps
    end
  end
end
