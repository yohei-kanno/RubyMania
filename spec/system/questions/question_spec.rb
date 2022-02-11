require 'rails_helper'

RSpec.describe "クイズ提供機能", type: :system do
  categories = Category.pluck(:name)
  describe "ログインしている場合" do
    let(:user) { create(:user) }
    before do
      login_as(user)
    end

    describe "Random10" do
      it_behaves_like :Questions_will_be_asked_context, categories[0], 10, 1
      it_behaves_like :Questions_will_be_asked_context, categories[1], 10, 2
      it_behaves_like :Questions_will_be_asked_context, categories[2], 10, 3
      it_behaves_like :Questions_will_be_asked_context, categories[3], 10, 4
      it_behaves_like :Questions_will_be_asked_context, categories[4], 10, 5
      it_behaves_like :Questions_will_be_asked_context, categories[5], 10, 6
      it_behaves_like :Questions_will_be_asked_context, categories[6], 10, 7
    end

    describe "Random3" do
      it_behaves_like :Questions_will_be_asked_context, categories[0], 3, 1
      it_behaves_like :Questions_will_be_asked_context, categories[1], 3, 2
      it_behaves_like :Questions_will_be_asked_context, categories[2], 3, 3
      it_behaves_like :Questions_will_be_asked_context, categories[3], 3, 4
      it_behaves_like :Questions_will_be_asked_context, categories[4], 3, 5
      it_behaves_like :Questions_will_be_asked_context, categories[5], 3, 6
      it_behaves_like :Questions_will_be_asked_context, categories[6], 3, 7
    end

    describe "Random1" do
      it_behaves_like :Questions_will_be_asked_context, categories[0], 1, 1
      it_behaves_like :Questions_will_be_asked_context, categories[1], 1, 2
      it_behaves_like :Questions_will_be_asked_context, categories[2], 1, 3
      it_behaves_like :Questions_will_be_asked_context, categories[3], 1, 4
      it_behaves_like :Questions_will_be_asked_context, categories[4], 1, 5
      it_behaves_like :Questions_will_be_asked_context, categories[5], 1, 6
      it_behaves_like :Questions_will_be_asked_context, categories[6], 1, 7
    end
  end

  describe "ログインしていない場合" do
    describe "Random10" do
      it_behaves_like :Questions_will_be_asked_context, categories[0], 10, 1
      it_behaves_like :Questions_will_be_asked_context, categories[1], 10, 2
      it_behaves_like :Questions_will_be_asked_context, categories[2], 10, 3
      it_behaves_like :Questions_will_be_asked_context, categories[3], 10, 4
      it_behaves_like :Questions_will_be_asked_context, categories[4], 10, 5
      it_behaves_like :Questions_will_be_asked_context, categories[5], 10, 6
      it_behaves_like :Questions_will_be_asked_context, categories[6], 10, 7
    end

    describe "Random3" do
      it_behaves_like :Questions_will_be_asked_context, categories[0], 3, 1
      it_behaves_like :Questions_will_be_asked_context, categories[1], 3, 2
      it_behaves_like :Questions_will_be_asked_context, categories[2], 3, 3
      it_behaves_like :Questions_will_be_asked_context, categories[3], 3, 4
      it_behaves_like :Questions_will_be_asked_context, categories[4], 3, 5
      it_behaves_like :Questions_will_be_asked_context, categories[5], 3, 6
      it_behaves_like :Questions_will_be_asked_context, categories[6], 3, 7
    end

    describe "Random1" do
      it_behaves_like :Questions_will_be_asked_context, categories[0], 1, 1
      it_behaves_like :Questions_will_be_asked_context, categories[1], 1, 2
      it_behaves_like :Questions_will_be_asked_context, categories[2], 1, 3
      it_behaves_like :Questions_will_be_asked_context, categories[3], 1, 4
      it_behaves_like :Questions_will_be_asked_context, categories[4], 1, 5
      it_behaves_like :Questions_will_be_asked_context, categories[5], 1, 6
      it_behaves_like :Questions_will_be_asked_context, categories[6], 1, 7
    end
  end
end
