module ModeDescription
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
