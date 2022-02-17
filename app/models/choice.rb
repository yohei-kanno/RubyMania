class Choice < ApplicationRecord
  extend OrderAsSpecified
  belongs_to :question

  scope :selected_choice, lambda { |selected_choices_ids|
                            where(id: selected_choices_ids).order_as_specified(id: selected_choices_ids)
                          }
  scope :point, -> { where(answer: true).count * 10 }
end
