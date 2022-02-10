module TestQuestion
  module StartQuestion
    def start_questions(i)
      visit root_path
      execute_script('window.scrollBy(0,10000)')
      page.accept_confirm do
        click_on "link-#{i}"
      end
      sleep 1
      execute_script('window.scrollBy(0,10000)')
      sleep 1
    end

    def choose_choice
      execute_script('window.scrollBy(0,1)')
      find('.choice_0_0').click
      execute_script('window.scrollBy(0,1000)')
      find('.choice_1_0').click
      execute_script('window.scrollBy(0,1000)')
      find('.choice_2_0').click
      execute_script('window.scrollBy(0,1000)')
      find('.choice_3_0').click
      execute_script('window.scrollBy(0,1000)')
      find('.choice_4_0').click
      execute_script('window.scrollBy(0,1000)')
      find('.choice_5_0').click
      execute_script('window.scrollBy(0,1000)')
      find('.choice_6_0').click
      execute_script('window.scrollBy(0,1000)')
      find('.choice_7_0').click
      execute_script('window.scrollBy(0,1000)')
      find('.choice_8_0').click
      execute_script('window.scrollBy(0,1000)')
      find('.choice_9_0').click
      execute_script('window.scrollBy(0,1000)')
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
      sleep 5
    end
  end
end