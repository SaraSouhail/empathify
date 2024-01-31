module ApplicationHelper
  def weekdays_only_options
    # Exclude Saturday and Sunday from the options
    (1..5).map { |day| [Date::DAYNAMES[day], day] }
  end
end
