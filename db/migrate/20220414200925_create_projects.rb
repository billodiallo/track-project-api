class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :startDate
      t.string :deadLineDate
      t.string :budget

      t.timestamps
    end
  end
end
