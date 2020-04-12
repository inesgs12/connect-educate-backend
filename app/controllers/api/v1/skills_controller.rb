module Api
  module V1
    class SkillsController < ApplicationController
      def index
        skills = Skill::SKILLS
        render json: skills
      end
    end
  end
end
