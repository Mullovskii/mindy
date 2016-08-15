class CreateFavors < ActiveRecord::Migration[5.0]
  def change
    create_table :favors do |t|
      t.integer :user_id
      t.integer :section_id
      t.integer :field_id

      t.timestamps
    end
  end
end
