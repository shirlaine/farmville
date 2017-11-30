class GetApiService

  # def initialize
  # end

  # def get_response(api_string)
  #   response = Net::HTTP.get(URI(api_string))
  #   ActiveSupport::JSON.decode(response)
  # end

  # def call(api_string(user))
  #   response = Net::HTTP.get(URI(api_string))
  #   ActiveSupport::JSON.decode(response)
  # end

  # def self.call(username_string)
  #   response = Net::HTTP.get(URI("https://api.github.com/users/#{username_string}"))
  #    ActiveSupport::JSON.decode(response)
  # end

  def self.call(url)
    response = Net::HTTP.get(URI(url))
     ActiveSupport::JSON.decode(response)
  end

end
