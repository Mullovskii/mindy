class FieldToLayout < ActiveRecord::Migration[5.0]
  def change
  	add_column :layouts, :field_id, :integer
  end
end
