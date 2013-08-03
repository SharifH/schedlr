class UserRegistrationsController  < Devise::RegistrationsController
  def create
    build_resource

  
    child_class = params[:user][:user_type].camelize.constantize
    resource.rolable = child_class.new(params[child_class.to_s.underscore.to_sym])

    valid = resource.valid?
    valid = resource.rolable.valid? && valid

    if valid && resource.save 
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_navigational_format?
        sign_in(resource_name, resource)
        respond_with resource, :location => redirect_location(resource_name, resource)
      else
        set_flash_message :notice, :inactive_signed_up, :reason => inactive_reason(resource) if is_navigational_format?
        expire_session_data_after_sign_in!
        respond_with resource, :location => after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords(resource)
      respond_with_navigational(resource) { render_with_scope :new }
    end
  end
end