class CreateMdmModuleNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :module_notes do |t|
      t.references :detail, null: false, foreign_key: { to_table: 'module_details' }
      t.string :note_type

      t.timestamps
    end
  end
end
