require 'rails_helper'

RSpec.describe "ログイン機能", type: :system do
  it "github認証でログイン出来ないこと" do
    not_a_user_in_github
    expect(page).to have_content("Incorrect username or password.")
  end
  end
    
    