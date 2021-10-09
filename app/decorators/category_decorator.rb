class CategoryDecorator < Draper::Decorator
  delegate_all

  def question_description
    case object.name
    when "String(文字列)"
      "Stringクラスの問題が出題されます"
    when "Numeric(数値)"
      "Numericクラスの問題が出題されます"
    when "Array(配列)"
      "Arrayクラスの問題が出題されます"
    when "Hash(ハッシュ)"
      "Hashクラスの問題が出題されます"
    when "基礎編総合問題"
      "String,Numeric,Array,Hashクラスからランダムに出題されます"
    when "オブジェクト指向"
      "RubySilverの難易度を超えた応用問題が出題されます"
    when "Regexp(正規表現)"
      "Regexpクラスの問題が出題されます"
    end
  end

  def one_question_description
    case object.name
    when "String(文字列)"
      "Stringクラスの問題が一問一答形式で出題されます"
    when "Numeric(数値)"
      "Numericクラスの問題が一問一答形式で出題されます"
    when "Array(配列)"
      "Arrayクラスの問題が一問一答形式で出題されます"
    when "Hash(ハッシュ)"
      "Hashクラスの問題が一問一答形式で出題されます"
    when "基礎編総合問題"
      "String,Numeric,Array,Hashの総合問題が一問一答形式で出題されます"
    when "オブジェクト指向"
      "RubySilverの難易度を超えた応用問題が一問一答形式出題されます"
    when "Regexp(正規表現)"
      "Regexpクラスの問題が一問一答形式で出題されます"
    end
  end

  def answer_description
    case object.name
    when "String(文字列)"
      "Stringクラスの回答が確認出来ます"
    when "Numeric(数値)"
      "Numericクラスの回答が確認出来ます"
    when "Array(配列)"
      "Arrayクラスの回答が確認出来ます"
    when "Hash(ハッシュ)"
      "Hashクラスの回答が確認出来ます"
    when "オブジェクト指向"
      "応用問題の回答が確認出来ます"
    when "Regexp(正規表現)"
      "Regexpクラスの回答が確認出来ます"
    end
  end
end
