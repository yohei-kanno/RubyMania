module LoginSupport
  def login_as(user)
    visit development_login_path
    fill_in "email", with: user.email
    fill_in "password", with: "password"
    click_on "ログイン"
  end
end
