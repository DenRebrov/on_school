class CreateEnrollments < ActiveRecord::Migration[7.2]
  def change
    create_table :enrollments do |t|
      t.references :course, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :progress, default: 0

      t.timestamps
    end
  end
end
