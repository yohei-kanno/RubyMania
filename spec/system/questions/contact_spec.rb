require 'rails_helper'

RSpec.describe "お問い合わせ機能", type: :system do
  before do
    ActionMailer::Base.deliveries.clear
  end

  it "#new" do
    visit new_contact_path
    expect(page).to have_content("お問い合わせフォーム")
  end

  it "#confirm" do
    visit new_contact_path
    fill_in "お名前", with: "菅野洋平"
    fill_in "内容", with: "RubySilver合格しました!"
    click_button "確認画面へ"
    expect(page).to have_content("確認画面")
  end

  it "#back" do
    visit new_contact_path
    fill_in "お名前", with: "菅野洋平"
    fill_in "内容", with: "RubySilver合格しました!"
    click_button "確認画面へ"
    expect(page).to have_content("確認画面")
    click_button "戻る"
    expect(page).to have_content("お問い合わせフォーム")
  end
end
