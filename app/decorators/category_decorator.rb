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

  def three_question_description
    case object.name
    when "String(文字列)"
      "Stringクラスの問題がランダムで3問出題されます"
    when "Numeric(数値)"
      "Numericクラスの問題がランダムで3問出題されます"
    when "Array(配列)"
      "Arrayクラスの問題がランダムで3問出題されます"
    when "Hash(ハッシュ)"
      "Hashクラスの問題がランダムで3問出題されます"
    when "基礎編総合問題"
      "String,Numeric,Array,Hashの総合問題がランダムで3問出題されます"
    when "オブジェクト指向"
      "RubySilverの難易度を超えた応用問題がランダムで3問題されます"
    when "Regexp(正規表現)"
      "Regexpクラスの問題がランダムで3問出題されます"
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
end
