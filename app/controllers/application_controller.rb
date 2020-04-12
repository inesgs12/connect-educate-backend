class ApplicationController < ActionController::API
  devise_group :user, contains: [:parent, :volunteer]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def render_resource(resource)
    if resource.errors.empty?
      render json: resource
    else
      validation_error(resource)
    end
  end

  def validation_error(resource)
    render json: {
      errors: [
        {
          status: '400',
          title: 'Bad Request',
          detail: resource.errors,
          code: '100'
        }
      ]
    }, status: :bad_request
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: %i[
                                        email
                                        password
                                        type
                                        first_name
                                        last_name
                                        bio
                                        birth_date
                                      ])

    devise_parameter_sanitizer.permit(:sign_in,
                                        keys: %i[
                                          email
                                          password
                                        ])
  end
end
