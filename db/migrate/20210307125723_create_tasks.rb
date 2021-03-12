class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :board, null: false
      t.string :title
      t.text :content
      t.date :limit
    end
  end
end
