class ApiController < ApplicationController
  respond_to :json

  def explore
    @json = doorkeeper_access_token.get(params[:api], headers: { 'X-Scope' => 'with_roles' }).parsed
    respond_with @json
  end
end
