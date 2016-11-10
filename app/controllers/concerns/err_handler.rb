module ErrHandler
  def self.included(base)
    base.rescue_from ActiveRecord::RecordNotFound do
      render :e404, status: 404
    end

    base.rescue_from CanCan::AccessDenied do |exception|
      if user_signed_in?
        render :e401, status: 401
      else
        redirect_to new_user_session_path
      end
    end
  end
end
