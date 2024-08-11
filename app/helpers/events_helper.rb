module EventsHelper
  def event_state_type(state)
    {
      draft: :secondary,
      published: :success,
      archived: :outline
    }[state.to_sym]
  end
end
