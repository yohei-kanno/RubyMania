module ApplicationHelper
  def ranks
    %w[j1 j2 j3 j4 j5 j6 j7 j8 j9]
  end

  def user_rank(users)
    ranks.zip(users)
  end

  def ruby_objects
    %w[obj1 obj2 obj3 obj4 obj5 obj6 obj7]
  end

  def book_objects
    %w[book1 book2 book3 book4 book5 book6]
  end

  def pen_objects
    %w[pen1 pen2 pen3 pen4 pen5 pen6 pen7]
  end

  def object_index(category, object)
    eval("#{object}_objects.zip(category)")
  end
  
  def default_meta_tags
    {
      site: 'RubyMania',
      title: 'RubySilverを取得しよう！',
      reverse: false,
      separator: '|',
      description: 'Rubyに特化したクイズサービスです！',
      canonical: "https://www.rubymania.info",
      icon: [
        { href: image_url('logo.png') },
        { href: image_url('logo.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' },
      ],
      og: {
        site_name: 'RubyMania',
        title: 'RubySilverを取得しよう！',
        description: 'Rubyに特化したクイズサービスです！', 
        type: 'website',
        url: "https://www.rubymania.info",
        image: image_url('ogp.png'),
        locale: 'ja_JP',
      }
    }
  end
end
