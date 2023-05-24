class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.datetime :deadline
      t.string :title
      t.string :decription

      t.timestamps
    end
  end
end
