module Api
  module V1
    class SessionsController < Devise::SessionsController
      skip_before_action :verify_signed_out_user
      respond_to :json

      def create
        user = User&.find_by_email(params['email'])
        if user&.valid_password?(params['password'])
          render json: user.as_json(only: [:id, :email, :authentication_token]), status: :created
        else
          head(:unauthorized)
        end
      end

      def destroy
        current_user = User.find_by_email(request.headers['X-User-Email'])
        current_user.authentication_token = nil
        if current_user&.save
          head(:ok)
        else
          head(:unauthorized)
        end
      end

      private

      def respond_with(resource, _opts = {})
        render json: resource
      end

      def respond_to_on_destroy
        head :no_content
      end
    end
  end
end
