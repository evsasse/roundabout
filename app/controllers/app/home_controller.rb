module App
  class HomeController < ApplicationController
    def index
      @stats = OpenStruct.new(
        links: Link.count,
        accesses: 0,
      )
    end
  end
end
