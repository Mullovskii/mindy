class CreateLayouts < ActiveRecord::Migration[5.0]
  def change
    create_table :layouts do |t|
      t.integer :user_id
      t.integer :section_id
      t.text :name
      t.text :description
      t.text :content
      t.text :heading
      t.string :image_url
      t.integer :field_id

      t.timestamps
    end
  end
end
