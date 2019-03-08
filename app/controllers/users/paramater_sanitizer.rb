class User::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_up, keys: [:first_name, :last_name, :birthdate, :style, :level])
    permit(:account_update, keys: [:first_name, :last_name, :nickname, :birthdate, :style, :level])
  end
end