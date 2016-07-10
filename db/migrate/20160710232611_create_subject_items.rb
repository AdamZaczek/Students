class CreateSubjectItems < ActiveRecord::Migration
  def change
    create_table :subject_items do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
