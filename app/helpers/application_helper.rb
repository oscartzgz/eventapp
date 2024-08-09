module ApplicationHelper
  def field_errors(model, attr)
    render(FieldErrorsComponent.new(model: model, attr: attr))
  end
end
