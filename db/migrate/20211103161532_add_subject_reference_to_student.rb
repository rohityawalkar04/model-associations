class AddSubjectReferenceToStudent < ActiveRecord::Migration[6.1]
  def change
    add_reference :students, :subject, null: false, foreign_key: true
  end
end
