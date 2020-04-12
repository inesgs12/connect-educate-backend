module Api
  module V1
    class VolunteersController < ApplicationController
      def index
          volunteers = Volunteer.all

          render json: volunteers, include: ['skills', 'languages']
      end

      def show
          volunteer = Volunteer.find_by(id: params[:id])
          if volunteer
              render json: volunteer, include: ['skills', 'languages']
          else
              render json: { error: 'Volunteer not found.' }, status: 404
          end
      end
    end
  end
end
