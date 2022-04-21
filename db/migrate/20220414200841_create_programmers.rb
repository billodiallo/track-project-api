# frozen_string_literal: true

# rubocop:disable
class CreateProgrammers < ActiveRecord::Migration[6.1]
  def change
    create_table :programmers do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
# rubocop:enable
