module ModeDescription
  def tab_menu(eng: nil, num: nil, boolean: "true", active: nil)
    tag.li("", class: "nav-item", role: "presentation") do
      tag.a("RUNDOM", class: "nav-link #{active}", aria: { controls: "#{eng}questions", selected: boolean.to_s },
                      data: { 'bs-toggle': "pill" }, href: "##{eng}questions", role: "tab", id: "#{eng}question_tab") do
        tag.div("Random#{num}", class: "question-tab")
      end
    end
  end

  def tab_content(eng: nil, num: nil, active: nil, obj: nil)
    tag.div("", class: ["tab-pane", "fade", active.to_s], area: { labelledby: "#{eng}questions-tab" },
                role: "tabpanel", id: "#{eng}questions") do
      concat tag.div(mode_description(num), class: "discription-space text-start")
      concat(tag.div("", class: "row row-cols-md-3 row-cols-2 g-4") do
        object_index(@categories, obj.to_s).each.with_index(1) do |(obj, category), i|
          concat(tag.div("", class: "col mb-3") do
            concat(tag.div("", class: "card card-#{i} #{eng}question-effect", id: "category-#{category.id}") do
                     path = questions_path(name: category.name, random: num)
                     link_to path, class: "link-dark", id: "link-#{category.id}",
                                   data: { confirm: t("confirm.start_question?", num: num) } do
                       concat(image_tag(obj, class: "card-img-top"))
                       concat(tag.div("", class: "card-body pt-0") do
                         concat(tag.div("", class: "card-title-#{i} card-title") do
                           concat tag.div("COMMING SOON...", class: "comming-soon") if category.name == "Others"
                           concat tag.div(category.name.to_s)
                         end)
                         concat tag.div(category.decorate.question_description(num).to_s,
                                        class: "card-text text-start")
                       end)
                     end
                   end)
          end)
        end
      end)
    end
  end

  def mode_description(num)
    case num
    when 10
      tag.div do
        concat tag.div("???????????????10?????????????????????", class: "category-title")
        concat tag.div("?????????????????????????????????????????????????????????(???????????????????????????)", class: "term-sentence")
        concat tag.div("??????????????????????????????????????????(???????????????????????????)", class: "term-sentence")
        concat tag.div("??????????????????????????????????????????????????????????????????", class: "term-sentence")
        concat tag.div("????????????????????????????????????????????????????????????", class: "term-sentence mt-3")
      end

    when 3
      tag.div do
        concat tag.div("???????????????3?????????????????????", class: "category-title")
        concat tag.div("???????????????????????????????????????????????????????????????????????????????????????", class: "term-sentence")
        concat tag.div("?????????????????????????????????????????????", class: "term-sentence")
        concat tag.div("????????????????????????????????????????????????????????????", class: "term-sentence")
        concat tag.div("???1??????????????????????????????10????????????????????????????????????", class: "term-sentence")
        concat tag.div("????????????????????????????????????????????????????????????", class: "term-sentence mt-3")
      end

    when 1
      tag.div do
        concat tag.div("???????????????1???1??????????????????????????????", class: "category-title")
        concat tag.div("???????????????????????????????????????????????????????????????????????????????????????", class: "term-sentence")
        concat tag.div("?????????????????????????????????????????????", class: "term-sentence")
        concat tag.div("????????????????????????????????????????????????????????????", class: "term-sentence")
        concat tag.div("?????????????????????????????????????????????????????????????????????", class: "term-sentence")
        concat tag.div("????????????????????????????????????????????????????????????", class: "term-sentence mt-3")
      end
    end
  end
end
