require "pry"
require 'time'

class Event
    attr_accessor :start_date, :time
    attr_reader :title, :end_date
    @@nombremeeting = 0


    def initialize(start, time, title, user)
        @start_date = start
        @duration = time.to_i
        @end_date = Time.parse(@start_date) + (time * 60)
        @title = title
        @attendees = user
        @@nombremeeting += 1
    end

    def postpone_24h
        @start_date = Time.parse(@start_date) + 86400 # Je mets à jour la date de début
        @end_date = @start_date + (@duration * 60) # Je mets à jour l'heure de fin
    end

    def is_past?
        return true if Time.now > @end_date
        return false
    end

    def is_soon?
        return true if Time.now - @end_date < 1800
        return false
    end

    def display
        puts ">Titre : #{title}"
        puts ">Date de début : #{@start_date.to_s}"
        puts ">Durée : #{@duration.to_s}"
        puts ">Invités : #{@attendees.join(', ')}"
    end
end