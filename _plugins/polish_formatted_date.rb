# -*- coding: utf-8 -*-

module Jekyll
  module PolishFormattedDate
    def polish_formatted_date(date)
      months = %w[nil stycznia lutego marca kwietnia maja czerwca lipca sierpnia września października listopada grudnia]
      days = %w[niedzielę poniedziałek wtorek środę czwartek piątek sobotę]
      day_name = days[date.wday]
      month_name = months[date.month]
      "w #{day_name}, #{date.day} #{month_name} #{date.year} roku"
    end
  end
end

Liquid::Template.register_filter(Jekyll::PolishFormattedDate)
