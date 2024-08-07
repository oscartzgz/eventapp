# frozen_string_literal: true

class AlertComponent < ViewComponent::Base
  ALERT_TYPE_CLASSES = {
    success: "bg-emerald-200 text-emerald-500 rounded px-4 py-2",
    error: "bg-red-200 text-red-500 rounded px-4 py-2"
  }

  def initialize(type:)
    @type = type
  end

  def alert_type_classes
    ALERT_TYPE_CLASSES[@type]
  end
end
