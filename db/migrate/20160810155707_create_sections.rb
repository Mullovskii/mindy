class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :parent_section_id
      t.text :description

      t.timestamps
    end
  end
end
