class User::ParameterSanitizer < Devise::ParameterSanitizer
 
  def sign_in
    default_params.permit(:first_name, :last_name, :profile_name)
  end 
  
end