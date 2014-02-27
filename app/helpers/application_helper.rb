module ApplicationHelper
  def date_or_undef date
    date.try(:strftime, "%d/%m/%Y") || "Não definida"
  end

  def short_date_or_undef date
    date.try(:strftime, "%d %h %H:%M") || "Não definida"
  end

  def date_time_or_undef date
    date.try(:strftime, "%d %h %H:%M") || "Não definida"
  end
end
