module TestQuestion
  module StartQuestion
    def start_questions(i)
      visit root_path
      page.accept_confirm do
        click_on "link-#{i}"
      end
    end
  end
  
  module StartOneQuestion
    
    def start_one_question(i)
      visit root_path
      click_link "one_questions_tab"
      sleep 1
      page.accept_confirm do
        click_on "link-#{i}"
      end
    end
  end
end