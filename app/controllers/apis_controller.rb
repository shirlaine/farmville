class ApisController < ApplicationController

  # def retrieve
  #   response = Net::HTTP.get(URI('https://api.github.com/users/shirlaine'))
  #   @user = ActiveSupport::JSON.decode(response)
  #   render json: @user
  # end

  # Refactor the above into a service class object to the method below
  # def retrieve
  #   @service = GetApiService.call("shirlaine")
  #     render json: @service
  # end

  def retrieve
    # we are passing in the url_string to the GetApi service
    @service = GetApiService.call("https://api.github.com/users/shirlaine")

    render json: @service

  end

end
