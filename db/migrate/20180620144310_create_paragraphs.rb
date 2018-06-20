class CreateParagraphs < ActiveRecord::Migration[5.2]
  def change
    create_table :paragraphs do |t|
      t.text :body
      t.integer :chapter_id

      t.timestamps
    end
  end
end
