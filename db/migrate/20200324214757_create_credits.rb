class CreateCredits < ActiveRecord::Migration[6.0]
  def change
    create_table :credits do |t|
      t.string :kind
      t.references :creditable, polymorphic: true, null: false

      t.timestamps
    end
    add_index :credits, [:kind, :credit]
  end
end
