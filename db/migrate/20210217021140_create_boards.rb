class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.string :title
      t.text :content
      t.date :limit
    end
  end
end
