class CreateLessons < ActiveRecord::Migration[7.2]
  def change
    create_table :lessons do |t|
      t.references :course, foreign_key: true
      t.string :title
      t.string :body
      t.integer :number, default: 0

      t.timestamps
    end
  end
end
