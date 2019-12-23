class LinkController < ApplicationController
  def show
    short_url = "#{request.host}#{request.path}"
    link = Link.find_by(short_url: short_url)

    redirect_to link.long_url, status: 302 if link.present?
  end
end
