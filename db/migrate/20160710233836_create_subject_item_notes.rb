class CreateSubjectItemNotes < ActiveRecord::Migration
  def change
    create_table :subject_item_notes do |t|
      t.integer :value
      t.references :subject_item, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
