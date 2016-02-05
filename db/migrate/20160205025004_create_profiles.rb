class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :Name
      t.text :Description
      t.string :Country
      t.string :string
      t.string :Color
      t.string :string
      t.integer :Age
      t.integer :Weight
      t.integer :Height

      t.timestamps null: false
    end
  end
end
