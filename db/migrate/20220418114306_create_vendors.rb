class CreateVendors < ActiveRecord::Migration[6.1]
  def change
    create_table :vendors do |t|
      t.references :programmer, null: false, foreign_key: true,  on_delete: :cascade
      t.references :project, null: false, foreign_key: true,  on_delete: :cascade

      t.timestamps
    end
  end
end
