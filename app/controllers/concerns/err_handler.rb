module ErrHandler
  def self.included(base)
    base.rescue_from ActiveRecord::RecordNotFound do
      render :e404, status: 404
    end
  end
end
