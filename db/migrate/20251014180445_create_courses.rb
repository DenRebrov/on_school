class CreateCourses < ActiveRecord::Migration[7.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :body
      t.integer :price, default: 0

      t.timestamps
    end
  end
end
