class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.references :stream, null: false, foreign_key: true

      t.timestamps
    end
  end
end
