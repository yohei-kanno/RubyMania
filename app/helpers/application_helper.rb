module ApplicationHelper
  
 
  def all_user_average_score(i)
    arr = []
    users = User.all
    users.each do |user|
      arr.push user.study_records.where(category_id:i).pluck(:score)
    end
    return if arr.flatten.empty?
    arr.to_a.flatten.sum / arr.to_a.flatten.length
  end
  
  def arr_x
    arr = []
    users = User.all
    users.each do |user|
      arr << user.study_records.where(category_id:1).pluck(:score)
    end
    arr.to_a.flatten
  end
  
  def dev(arr_x)
      avg = arr_x.sum / arr_x.length
      arr1 = arr_x.map{|x| (x - avg) ** 2}
      std = Math.sqrt(arr1.sum / arr_x.length)
      return (( 49 - avg) * 10 / std + 50).round(2)
  end

  
  
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
        { href: image_url('logo.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' }
      ],
      og: {
        site_name: 'RubyMania',
        title: 'RubySilverを取得しよう！',
        description: '問題数は３５０問以上！
Rubyに特化したクイズサービスです！', 
        type: 'website',
        url: "https://www.rubymania.info",
        image: image_url('logo.png'),
        locale: 'ja_JP',
      }
    }
  end
end
