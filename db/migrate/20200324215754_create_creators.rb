class CreateCreators < ActiveRecord::Migration[6.0]
  def change
    create_table :creators do |t|
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
