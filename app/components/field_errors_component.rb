# frozen_string_literal: true

class FieldErrorsComponent < ViewComponent::Base
  def initialize(model:, attr:)
    @model = model
    @attr = attr
  end

end
