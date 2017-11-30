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
    @service = GetApiService.call("https://graph.facebook.com/v2.11/801300133319963_1476720132444623/insights/post_reactions_like_total?access_token=EAACEdEose0cBAAT9ZB1aiGIOA4h3iDbo6JNYDCfCCMe758T7qDJge8GZAwx0BxyOut0xAWxnTlG4PbC2uA8G1uI3s4UayLZARSlW4WBviUpX5Ni5fSZAfbcsWW48aI0nCfdfajDi5vYfv0KYkKoTMnsjLVzFIz3olpHJDwMDBl992zn38AYbefSl9JvG1qgZD")

    puts @service

    # save into seed?
    # save into database?

  end

end
