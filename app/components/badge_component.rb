# frozen_string_literal: true

class BadgeComponent < ViewComponent::Base
  TYPE_CLASSES = {
    success: "border-green-400 bg-green-100 text-green-400",
    warning: "border-yellow-400 bg-yellow-200",
    error: "border-red-400 bg-red-200",
    secondary: "border-gray-300 bg-gray-200 text-gray-400",
    outline: "border-gray-400 text-gray-400"
  }

  def initialize(type:)
    @type = type
  end

  def css_class
    [ base_class, TYPE_CLASSES[@type] ].join(" ")
  end

  def base_class
    "inline rounded-full px-2 border"
  end
end
