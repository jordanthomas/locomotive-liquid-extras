require_relative "extras/version"
require "active_support/core_ext/date_time"

module Locomotive
  module Liquid
    module Extras
      
      def filtertest(input)
        "hello world"
      end
      
      def end_of_year(date)
        date.end_of_year
      end

      def beginning_of_year(date)
        date.beginning_of_year
      end

      def end_of_month(date)
        date.end_of_month
      end

      def beginning_of_month(date)
        date.beginning_of_month
      end

      def end_of_week(date)
        date.end_of_week
      end

      def beginning_of_week(date)
        date.beginning_of_week
      end

      def end_of_day(date)
        date.end_of_day
      end

      def beginning_of_day(date)
        date.beginning_of_day
      end

      def adjust_date(date, adjustment, unit)
        adjustment = adjustment.to_i
        unit = unit.to_sym

        if (adjustment.respond_to? unit)
          date + adjustment.send(unit)
        else
          date
        end
      end
    end
  end
end

Liquid::Template.register_filter(Locomotive::Liquid::Extras)
