class PodcastsController < ApplicationController
  def index
    response = HTTParty.get("https://listennotes.p.rapidapi.com/api/v1/best_podcasts",
      headers: {
        "X-RapidAPI-Key" => "o1Chzyax8pmsh9ElhH9HQRkBOEqtp16Fm6HjsnYRS3BZfVNxAt"
      }
    )

    response_json = JSON.parse response.body
    @channels = response_json['channels']

    # "next_page_number":2
    # "has_previous":false
    # "name":"Podcasts"
    # "previous_page_number":0
    # "page_number":1
    # "parent_id":NULL
    # "has_next":true
    # "total":235
    # "channels":[{},{}]
    # "listennotes_url":"https://www.listennotes.com/best-podcasts/"
    # "id":67

  end

  def view
  end
end
