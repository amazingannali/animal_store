class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken
      before_action :configure_permitted_parameters, if: :devise_controller?

      Protected
      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first, :last, :image])
      end
end
