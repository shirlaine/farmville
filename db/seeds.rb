# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Puts Seed for Farms

puts "Seeding data for 1 user"

user = User.find_or_initialize_by(email: "user1@gmail.com")
user.password = '111111'
user.save


puts "Seeding data for 1 category"

Category.find_or_create_by!(
  name: 'Telecoms'
  )

puts "Seeding data for 1 campaign"

# Campaign.find_or_create_by!(
#     title: 'Singtel', #=> 7
#     description: 'Faker::HowIMetYourMother.quote',
#     user_id: 1,
#     category_id: 1
#     )

puts "Seeding data for 1 facebook_post"

# FacebookPost.find_or_create_by!(
#   title: 'Singtel FB #1',
#   url: 'www.facebook.com/dog#1',
#   completed?: true,
#   campaign_id: 1
  )


{"data"=>[{"name"=>"post_reactions_like_total", "period"=>"lifetime", "values"=>[{"value"=>15}], "title"=>"Lifetime Total Like Reactions of a post.", "description"=>"Lifetime: Total like reactions of a post.", "id"=>"801300133319963_1476720382444598/insights/post_reactions_like_total/lifetime"}], "paging"=>{"previous"=>"https://graph.facebook.com/v2.11/801300133319963_1476720132444623/insights?access_token=EAACEdEose0cBAAT9ZB1aiGIOA4h3iDbo6JNYDCfCCMe758T7qDJge8GZAwx0BxyOut0xAWxnTlG4PbC2uA8G1uI3s4UayLZARSlW4WBviUpX5Ni5fSZAfbcsWW48aI0nCfdfajDi5vYfv0KYkKoTMnsjLVzFIz3olpHJDwMDBl992zn38AYbefSl9JvG1qgZD&metric=post_reactions_like_total&since=1511510400&until=1511683200", "next"=>"https://graph.facebook.com/v2.11/801300133319963_1476720132444623/insights?access_token=EAACEdEose0cBAAT9ZB1aiGIOA4h3iDbo6JNYDCfCCMe758T7qDJge8GZAwx0BxyOut0xAWxnTlG4PbC2uA8G1uI3s4UayLZARSlW4WBviUpX5Ni5fSZAfbcsWW48aI0nCfdfajDi5vYfv0KYkKoTMnsjLVzFIz3olpHJDwMDBl992zn38AYbefSl9JvG1qgZD&metric=post_reactions_like_total&since=1511856000&until=1512028800"}}
