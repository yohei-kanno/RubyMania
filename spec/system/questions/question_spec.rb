require 'rails_helper'

RSpec.describe "クイズ提供機能", type: :system do
  describe "ログインしている場合" do
    let(:user){create(:user)}
    before do
      login_as(user)
    end
    describe "Random10" do
      it_behaves_like "Questions_will_be_asked_context", "String(文字列)", 10, 1
      it_behaves_like "Questions_will_be_asked_context", "Numeric(数値)", 10, 2
      it_behaves_like "Questions_will_be_asked_context", "Array(配列)", 10, 3
      it_behaves_like "Questions_will_be_asked_context", "Hash(ハッシュ)",   10, 4
      it_behaves_like "Questions_will_be_asked_context", "Total(総合問題)",  10, 5
      it_behaves_like "Questions_will_be_asked_context", "Object",          10, 6
      it_behaves_like "Questions_will_be_asked_context", "Regexp(正規表現)",  10, 7
    end

    describe "Random3" do
      it_behaves_like "Questions_will_be_asked_context", "String(文字列)", 3, 1
      it_behaves_like "Questions_will_be_asked_context", "Numeric(数値)", 3, 2
      it_behaves_like "Questions_will_be_asked_context", "Array(配列)", 3, 3
      it_behaves_like "Questions_will_be_asked_context", "Hash(ハッシュ)", 3, 4
      it_behaves_like "Questions_will_be_asked_context", "Total(総合問題)", 3, 5
      it_behaves_like "Questions_will_be_asked_context", "Object", 3, 6
      it_behaves_like "Questions_will_be_asked_context", "Regexp(正規表現)", 3, 7
    end

    describe "Random1" do
      it_behaves_like "Questions_will_be_asked_context", "String(文字列)",     1, 1
      it_behaves_like "Questions_will_be_asked_context", "Numeric(数値)",    1, 2
      it_behaves_like "Questions_will_be_asked_context", "Array(配列)",      1, 3
      it_behaves_like "Questions_will_be_asked_context", "Hash(ハッシュ)",   1, 4
      it_behaves_like "Questions_will_be_asked_context", "Total(総合問題)",  1, 5
      it_behaves_like "Questions_will_be_asked_context", "Object",           1, 6
      it_behaves_like "Questions_will_be_asked_context", "Regexp(正規表現)", 1, 7
    end
  end

  describe "ログインしていない場合" do
    describe "Random10" do
      it_behaves_like "Questions_will_be_asked_context", "String(文字列)",     10, 1
      it_behaves_like "Questions_will_be_asked_context", "Numeric(数値)",    10, 2
      it_behaves_like "Questions_will_be_asked_context", "Array(配列)",      10, 3
      it_behaves_like "Questions_will_be_asked_context", "Hash(ハッシュ)",   10, 4
      it_behaves_like "Questions_will_be_asked_context", "Total(総合問題)",  10, 5
      it_behaves_like "Questions_will_be_asked_context", "Object",           10, 6
      it_behaves_like "Questions_will_be_asked_context", "Regexp(正規表現)", 10, 7
    end

    describe "Random3" do
      it_behaves_like "Questions_will_be_asked_context", "String(文字列)",     3, 1
      it_behaves_like "Questions_will_be_asked_context", "Numeric(数値)",    3, 2
      it_behaves_like "Questions_will_be_asked_context", "Array(配列)",      3, 3
      it_behaves_like "Questions_will_be_asked_context", "Hash(ハッシュ)",   3, 4
      it_behaves_like "Questions_will_be_asked_context", "Total(総合問題)",  3, 5
      it_behaves_like "Questions_will_be_asked_context", "Object",           3, 6
      it_behaves_like "Questions_will_be_asked_context", "Regexp(正規表現)", 3, 7
    end

    describe "Random1" do
      it_behaves_like "Questions_will_be_asked_context", "String(文字列)",     1, 1
      it_behaves_like "Questions_will_be_asked_context", "Numeric(数値)",    1, 2
      it_behaves_like "Questions_will_be_asked_context", "Array(配列)",      1, 3
      it_behaves_like "Questions_will_be_asked_context", "Hash(ハッシュ)",   1, 4
      it_behaves_like "Questions_will_be_asked_context", "Total(総合問題)",  1, 5
      it_behaves_like "Questions_will_be_asked_context", "Object",           1, 6
      it_behaves_like "Questions_will_be_asked_context", "Regexp(正規表現)", 1, 7
    end
  end
end
