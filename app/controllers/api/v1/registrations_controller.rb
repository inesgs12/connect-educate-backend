module Api
  module V1
    class RegistrationsController < Devise::RegistrationsController
      respond_to :json

      def create
        build_resource(sign_up_params)
        resource.save
        update_volunteer_profile(resource, skills: params['skills'], languages: params['languages']) if resource.volunteer?
        render_resource(resource)
      end

      private

      def update_volunteer_profile(volunteer, skills: skills, languages: languages)
        skills.each{ |skill| volunteer.skills.create!(name: skill) }
        languages.each{ |language| volunteer.languages.create!(name: language) }
      end
    end
  end
end
