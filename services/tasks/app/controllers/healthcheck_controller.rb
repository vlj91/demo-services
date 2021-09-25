class HealthcheckController < ApplicationController
  def ping
    render json: { success: true }, status: :ok
  end
end
