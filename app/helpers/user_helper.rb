module UserHelper
  def get_user_name(email)
    email.split('@').first
  end
end
