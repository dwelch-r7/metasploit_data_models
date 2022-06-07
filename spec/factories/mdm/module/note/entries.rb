FactoryBot.define do
  factory :mdm_module_note_entry, class: 'Mdm::Module::Note::Entry' do
    description { "MyString" }
    note { nil }
  end
end
