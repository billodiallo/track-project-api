# frozen_string_literal: true

# rubocop:disable
class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.datetime :startDate
      t.datetime :deadLineDate
      t.integer :budget
      t.references :programmer, null: false, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
# rubocop:enable
