# frozen_string_literal: true

class Event # rubocop:disable Style/Documentation
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)

    @duration = duration

    @title = title

    @attendees = attendees
  end

  def postpone_24h
    @start_date += 60 * 60 * 24
  end

  def end_date
    @start_date + duration * 60
  end

  def is_past? # rubocop:disable Naming/PredicatePrefix
    @start_date < Time.now
  end

  def is_future? # rubocop:disable Naming/PredicatePrefix
    !is_past?
  end

  def is_soon? # rubocop:disable Naming/PredicatePrefix
    @start_date < Time.now + 60 * 30
  end

  def to_s
    puts ">Titre : #{@title}"

    puts ">Date de début : #{@start_date}"

    puts ">Durée : #{@duration} minutes"

    print '>Invités :'

    puts @attendees.join(', ')
  end
end
