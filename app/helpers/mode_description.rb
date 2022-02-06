module ModeDescription

  def tab_menu(en: nil, n: nil , boolean: "true", active: nil)
    content_tag(:li, "",class: "nav-item", role: "presentation") do
      content_tag(:a,"RUNDOM", class:"nav-link #{active}", aria: {controls: "#{en}questions", selected: "#{boolean}"}, data:{"bs-toggle": "pill"}, href: "##{en}questions", role: "tab", id: "#{en}question_tab") do
        content_tag(:div, "Random#{n}", class: "question-tab")
      end
    end
  end

    
  
  def tab_content(en: nil, n: nil, active: nil, obj: nil)
    content_tag(:div, "", class: ["tab-pane", "fade", "#{active}"], area: {labelledby: "#{en}questions-tab"}, role: "tabpanel", id: "#{en}questions") do
      concat content_tag(:div, mode_description(n),class: "discription-space text-start")
      concat( content_tag(:div,"", class: "row row-cols-md-3 row-cols-2 g-4") do
        object_index(@categories, "#{obj}").each.with_index(1) do |(obj, category), i|
          concat( content_tag(:div, "", class: "col mb-3") do
            concat( content_tag(:div, "", class: "card card-#{i} #{en}question-effect", id: "category-#{category.id}") do
              case n
              when 10
                path = questions_path(name: category.name)
              when 3
                path = three_questions_path(name: category.name)
              when 1
                path = one_questions_path(name: category.name)
              end
              link_to path, class: "link-dark", id: "link-#{category.id}", data: {confirm: t("confirm.start_question?", n: n)} do
                concat (image_tag(obj, class: "card-img-top"))
                concat( content_tag(:div,"", class: "card-body pt-0") do
                  concat( content_tag(:div, "", class:"card-title-#{i} card-title") do
                    concat content_tag(:div, "COMMING SOON...", class: "comming-soon")
                    concat content_tag(:div, "#{category.name}")
                  end)
                  concat content_tag(:div, "#{category.decorate.question_description(n)}", class: "card-text text-start")
                end)
              end
            end)
          end)
        end
      end)
    end
  end

  def mode_description(n)
    case n
    when 10 then
      content_tag(:div) do
        concat content_tag(:div, "ランダムに10問出題されます", class: "category-title")
        concat content_tag(:div, "・記録、チャート、偏差値に反映されます(ログインが必要です)", class: "term-sentence")
        concat content_tag(:div, "・ある程度がっつりやりたい方にお勧めでです。", class: "term-sentence")
        concat content_tag(:div, "下の画像からカテゴリーを選択して下さい。", class: "term-sentence mt-3")
      end
  
    when 3 then
      content_tag(:div) do
        concat content_tag(:div, "ランダムに3問出題されます", class: "category-title")
        concat content_tag(:div, "・記録やチャートには反映されませんが経験値は付与されます。", class: "term-sentence")
        concat content_tag(:div, "・経験値を得る為にはログインが必要です。", class: "term-sentence")
        concat content_tag(:div, "・1問では物足りないけど10問は重い方にお勧めです。", class: "term-sentence")
        concat content_tag(:div, "下の画像からカテゴリーを選択して下さい。", class: "term-sentence mt-3")
      end
  
    when 1 then
      content_tag(:div) do
        concat content_tag(:div, "ランダムに1問1答形式で出題されます", class: "category-title")
        concat content_tag(:div, "・記録やチャートには反映されませんが経験値は付与されます。", class: "term-sentence")
        concat content_tag(:div, "・経験値を得る為にはログインが必要です。", class: "term-sentence")
        concat content_tag(:div, "・サクッと問題を解いていきたい方にお勧めです。", class: "term-sentence")
        concat content_tag(:div, "下の画像からカテゴリーを選択して下さい。", class: "term-sentence mt-3")
      end
    end
  end
end
