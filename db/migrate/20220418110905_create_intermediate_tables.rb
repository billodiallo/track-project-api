class CreateIntermediateTables < ActiveRecord::Migration[6.1]
  def change
    create_table :intermediate_tables do |t|
      t.references :programmers, null: false, foreign_key: true
      t.references :projects, null: false, foreign_key: true

      t.timestamps
    end
  end
end
