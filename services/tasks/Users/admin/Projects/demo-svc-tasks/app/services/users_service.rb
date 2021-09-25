class UsersService
  require 'httparty'

  def initialize(params = {})
    @base_url = params[:base_url] || ENV['USERS_BASE_URL']
  end

  def valid_user?(id)
    res = user_by_id(id)
    res["id"] == id
  end

  private

  def user_by_id(id)
    HTTParty.get("#{@base_url}/users/#{id}")
  end
end
