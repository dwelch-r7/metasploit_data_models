class Mdm::Module::Note < ApplicationRecord
  extend ActiveSupport::Autoload
  autoload :Entry

  self.table_name = 'module_notes'

  belongs_to :detail, :class_name => 'Mdm::Module::Detail', inverse_of: :notes

  has_many :entries, :class_name => 'Mdm::Module::Note::Entry', :dependent => :destroy, inverse_of: :note
  accepts_nested_attributes_for :entries


  # validates :detail, :presence => true
  # validates :entries, :presence => true
  # validates_associated :entries
end
