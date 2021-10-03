10.times do |n |
  User.seed_once do |s|
    s.name = "pandamania#{n}"
    s.email = "test#{n}@example.com"
    s.password = "foobar"
  end
end
