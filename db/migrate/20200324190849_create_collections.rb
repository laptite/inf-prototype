class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.string :name
      t.references :collectible, polymorphic: true, null: false

      t.timestamps
    end
    add_index :collections, :name
  end
end