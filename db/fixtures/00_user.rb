# 10.times do |n |
#   User.seed_once do |s|
#     s.nickname = "pandamania#{n}"
#     s.email = "test#{n}@example.com"
#     s.password = "foobar"
#     s.password_confirmation = "foobar"
#     s.agreement = true
#   end
# end