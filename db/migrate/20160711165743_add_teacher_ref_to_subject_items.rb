class AddTeacherRefToSubjectItems < ActiveRecord::Migration
  def change
    add_reference :subject_items, :teacher, index: true, foreign_key: true
  end
end
