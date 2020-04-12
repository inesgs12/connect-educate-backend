class Language < ApplicationRecord
  belongs_to :volunteer

  languages = LanguageList::COMMON_LANGUAGES
  enum name: Hash[languages.map.with_index { |l, i| [ l.name, i+1 ] }] 
end
