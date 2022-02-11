module TestQuestion
  module StartQuestion
    def start_questions(i, random_num)
      visit root_path
      execute_script('window.scrollBy(0,10000)')
      case random_num
      when 10
        click_link('question_tab')
      when 3
        click_link('three_question_tab')
      when 1
        click_link('one_question_tab')
      end
      execute_script('window.scrollBy(0,10000)')
      page.accept_confirm do
        click_on "link-#{i}"
      end
      sleep 1
      execute_script('window.scrollBy(0,10000)')
      sleep 1 
    end

    def start_questions_include_choose(category_num , random_num )
      visit root_path
      execute_script('window.scrollBy(0,10000)')
      case random_num
      when 10
        click_link('question_tab')
      when 3
        click_link('three_question_tab')
      when 1
        click_link('one_question_tab')
      end
      execute_script('window.scrollBy(0,10000)')
      page.accept_confirm do
        click_on "link-#{category_num}"
      end
      sleep 1
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
      execute_script('window.scrollBy(0,10000)')
      sleep 1 
    end
  end
end
