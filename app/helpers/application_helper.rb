module ApplicationHelper

  include ObjectIndex
  include AverageScore
  include ModeDescription

        
  def default_meta_tags
    {
      site: 'RubyMania',
      title: 'RubySilverを取得しよう！',
      keywords: 'ruby, ruby問題集, rubysilver, rubygold, ruby資格, 問題, 問題集, RubyMania',
      reverse: false,
      separator: '|',
      description: 'Rubyに特化したクイズサービスです。問題数は３５０問以上！progateでruby終わった！もしくは少し肩慣らししたいという方に向けてのサービスです。',
      canonical: "https://www.rubymania.info",
      icon: [
        { href: image_url('logo.png') },
        { href: image_url('logo.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' }
      ],
      og: {
        site_name: 'RubyMania',
        title: 'RubySilverを取得しよう！',
        description: 'Rubyに特化したクイズサービスです。問題数は３５０問以上！progateでruby終わった！もしくは少し肩慣らししたいという方に向けてのサービスです。',
        type: 'website',
        url: "https://www.rubymania.info",
        image: image_url('top.png'),
        locale: 'ja_JP'
      },
      twitter: {
        site: '@iZXIlbQrHHr5n6E',
        card: 'summary_large_image',
        image: image_url("top.png")
      }
    }
  end
end
