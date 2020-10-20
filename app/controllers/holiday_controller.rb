require 'ruby-holidayapi'

class HolidayController < ApplicationController


    def index
        hapi = HolidayAPI::V1.new('24cbebb4-e8de-426f-a68d-fe6032446dfd')

        parameters = {
          # Required
          'country' => 'US',
          'year'    => 2019,
          # Optional
          # 'month'    => 7,
          # 'day'      => 4,
          # 'previous' => true,
          # 'upcoming' => true,
          # 'public'   => true,
          # 'pretty'   => true,
        }
        
        @response = hapi.holidays(parameters)
    end


end
