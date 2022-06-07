FactoryBot.define do
  factory :mdm_module_note, class: 'Mdm::Module::Note' do
    detail { nil }
    note_type { "MyString" }
  end
end
