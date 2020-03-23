class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
    	t.text 		:text
    	t.integer :post_id

      t.timestamps
    end
  end
end
