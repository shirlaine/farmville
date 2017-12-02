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
    @service = GetApiService.call("https://graph.facebook.com/v2.11/801300133319963_1476720132444623/insights/post_reactions_like_total?access_token=EAACEdEose0cBAMd49w42KdWwmdKbMCsJRZAkk04sKNQnRDem73yQ40r2gsDmUBwzB5Xf5tnoFrsZCZCkwjM0RsMXJaUZCuCndtC4ye18hIV8u0Kgq149SxsvZALs7ZBZA4GC6ZAqh44qmw8DG4ThyT40AOIIfbOhv6ZAAzRe9uO1p4xA5gkZCoXcs1MF82aGG6Ja8ZD")
    puts @service
  end

  def facebook
    @graph = Koala::Facebook::API.new('EAACEdEose0cBADvg3oPOrppn8gUKJa834rV5uTF3cIwD5W0iH3KgsuZCqGFullUZA0wJT1AjO5t1PDRdyBGOdsxMVFAtJQaWirZCUyQJmfuA5GjAOqpMZB3uN5jNpJf1wMICrAv8cT79fumTT3B6tLbF3DGZAsUSoMmUY2b3ZC8VpygFG5ZCORpZA0jlfoEucVoZD')

    @post= @graph.get_connections("801300133319963","posts")

    @impressions = @graph.get_connection('801300133319963_1359160674200570', 'insights', metric: 'post_impressions_unique, post_stories_by_action_type, post_reactions_by_type_total, post_consumptions, post_consumptions_by_type', period: 'lifetime')

    @likes= @graph.get_object('801300133319963_1392566647526639', fields: "shares.summary(true), likes.limit(0).summary(true),comments.limit(0).summary(true)")

    puts @likes
    puts @impressions
  end

end
