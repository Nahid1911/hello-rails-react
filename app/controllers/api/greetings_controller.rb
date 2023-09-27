# frozen_string_literal: true

module Api
  class GreetingsController < ApplicationController
    def random
      random_greeting = Message.order('RANDOM()').first
      render json: { message: random_greeting.content }
    end
  end
end
