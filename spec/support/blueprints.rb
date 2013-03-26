require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

Place.blueprint do
  name      { "Place #{sn}" }
  latitude  { -22.954284 }
  longitude { -43.1879 }
  address   { "Rua Dona Mariana 155" }
end
