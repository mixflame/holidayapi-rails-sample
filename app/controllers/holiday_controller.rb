require 'ruby-holidayapi'

class HolidayController < ApplicationController


    def index

        hapi = HolidayAPI::V1.new('24cbebb4-e8de-426f-a68d-fe6032446dfd')

        @response = hapi.countries

        @countries = @response["countries"]

    end

    def holidays
        hapi = HolidayAPI::V1.new('24cbebb4-e8de-426f-a68d-fe6032446dfd')

        @country = params[:country]

        parameters = {
          'country' => @country,
          'year'    => 2019,
        }
        
        @response = hapi.holidays(parameters)




    end

    def languages
        hapi = HolidayAPI::V1.new('24cbebb4-e8de-426f-a68d-fe6032446dfd')

        parameters = {}

        @response = hapi.languages(parameters)

    end

    def workday
        hapi = HolidayAPI::V1.new('24cbebb4-e8de-426f-a68d-fe6032446dfd')

        
        @country = params[:country]
        @start = params[:start]
        @days = params[:days]

        parameters = {
          'country' => @country,
          'start' => @start,
          'days' => @days
        }
        
        @response = hapi.workday(parameters)

    end


end
