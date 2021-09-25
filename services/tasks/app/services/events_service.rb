class EventsService
  require 'httparty'
  require 'json'

  def initialize(params = {})
    @base_url = params[:base_url] || ENV['EVENTS_BASE_URL']
  end

  def publish(name, task_id)
    payload = {
      :name => name,
      :task_id => task_id
    }.to_json

    HTTParty.post("#{@base_url}/events", 
      :headers => {
        'Content-Type' => 'application/json'
      },
      :body => payload
    )
  end
end
