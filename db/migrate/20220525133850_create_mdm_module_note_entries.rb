class CreateMdmModuleNoteEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :module_note_entries do |t|
      t.string :description
      t.references :note, null: false, foreign_key: { to_table: 'module_notes' }

      t.timestamps
    end
  end
end
