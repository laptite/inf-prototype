class CreateCredits < ActiveRecord::Migration[6.0]
  def change
    create_table :credits do |t|
      t.string :name
      t.references :creditable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
