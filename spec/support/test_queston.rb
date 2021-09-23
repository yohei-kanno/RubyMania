module TestQuestion
  module StartQuestion
    def start_string_questions
      visit root_path
      page.accept_confirm do
        click_on "link-1"
      end
    end
  end
end