module ErrHandler
  def self.included(base)
    base.rescue_from ActiveRecord::RecordNotFound do
      render :e404, status: 404
    end

    base.rescue_from CanCan::AccessDenied do |exception|
      redirect_to new_user_session_path
    end
  end
end
