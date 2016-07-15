class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  include Pundit
  #protect_from_forgery with: :null_session
  # protect_from_forgery with: :exception, if: Proc.new { |c| c.request.format != 'application/json' }
  # protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  #

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  rescue_from VersionCake::UnsupportedVersionError, :with => :render_unsupported_version

  private

  def user_not_authorized
    # flash[:alert] = "You are not authorized to perform this action"
    redirect_to(request.referrer || root_path)
  end

  private

  def render_unsupported_version
    headers['API-Version-Supported'] = 'false'
    respond_to do |format|
      format.json { render json: {message: "You requested an unsupported version (#{requested_version})"}, status: :unprocessable_entity }
    end
  end
end
