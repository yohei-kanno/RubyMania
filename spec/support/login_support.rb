module LoginSupport
  def github_login
    visit root_path
    click_on "Sign in with Github"
    fill_in "login_field", with: ENV["MYADDRESS"]
    fill_in "password", with: ENV["MYPASS"] 
    click_on "Sign in"
  end
  
  def not_a_user_in_github
    visit root_path
    click_on "Sign in with Github"
    fill_in "login_field", with: "aaaaaaaaaaaaaaaaaa"
    fill_in "password", with: "aaaaaaaaaaaaaaa"
    click_on "Sign in"
  end
end