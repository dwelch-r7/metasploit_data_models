class Mdm::Module::Note::Entry < ApplicationRecord
  self.table_name = 'module_note_entries'

  belongs_to :note, :class_name => 'Mdm::Module::Note', inverse_of: :entries

  # validates :description, :presence => true
end
