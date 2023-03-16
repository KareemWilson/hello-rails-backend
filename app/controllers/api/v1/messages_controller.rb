class Api::V1::MessagesController < ApplicationController
  def index
    @greeting = Message.order("RANDOM()").first.greeting

    render json: { greeting: @greeting }
  end
end
