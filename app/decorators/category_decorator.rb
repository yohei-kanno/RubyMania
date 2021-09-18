class CategoryDecorator < Draper::Decorator
  delegate_all
  
  def question_description
    case object.name
    when "String(文字列)" then
      "Stringクラスの問題が出題されます"
    when "Integer(数値)" then
        "Stringクラスの問題が出題されます"
    when "Array(配列)" then
        "Arrayクラスの問題が出題されます"
    when "Hash(ハッシュ)" then
        "Hashクラスの問題が出題されます"
    when "基礎編総合問題" then
        "String,Integer,Array,Hashクラスからランダムに出題されます"
    when "オブジェクト指向" then
        "RubySilverの難易度を超えた応用問題が出題されます"
    when "Regexp(正規表現)" then
        "Regexpクラスの問題が出題されます"
    end
  end
  
  def one_question_description
    case object.name
    when "String(文字列)" then
        "Stringクラスの問題が一問一答形式で出題されます"
    when "Integer(数値)" then
        "Integerクラスの問題が一問一答形式で出題されます"
    when "Array(配列)" then
        "Arrayクラスの問題が一問一答形式で出題されます"
    when "Hash(ハッシュ)" then
        "Hashクラスの問題が一問一答形式で出題されます"
    when "基礎編総合問題" then
        "String,Integer,Array,Hashの総合問題が一問一答形式で出題されます"
    when "オブジェクト指向" then
        "RubySilverの難易度を超えた応用問題が一問一答形式出題されます"
    when "Regexp(正規表現)" then
        "Regexpクラスの問題が一問一答形式で出題されます"
    end
  end
  
  def answer_description
    case object.name
    when "String(文字列)" then
        "Stringクラスの回答が確認出来ます"
    when "Integer(数値)" then
        "Integerクラスの回答が確認出来ます"
    when "Array(配列)" then
        "Arrayクラスの回答が確認出来ます"
    when "Hash(ハッシュ)" then
        "Hashクラスの回答が確認出来ます"
    when "オブジェクト指向" then
        "応用問題の回答が確認出来ます"
    when "Regexp(正規表現)" then
        "Regexpクラスの回答が確認出来ます"
    end
  end
end
