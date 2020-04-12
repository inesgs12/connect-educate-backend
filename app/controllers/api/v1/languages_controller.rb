module Api
  module V1
    class LanguagesController < ApplicationController
      def index
        languages = LanguageList::COMMON_LANGUAGES
        render json: languages
      end
    end
  end
end
