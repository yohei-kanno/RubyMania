module WelcomeHelper
  def ranks
    ["j1","j2","j3","j4","j5","j6","j7","j8","j9"]
  end
  
  def user_rank
    ranks.zip(@users)
  end
end
