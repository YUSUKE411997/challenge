class MapsController < ApplicationController
  def index
  end

  def map
    results = Geocoder.search(params[:address])
    @latlng = results.first.coordinates

    # respond_to以下の記述によって、
    # remote: trueのアクセスに対して、
    # map.js.erbが変えるようになります。
    # respond_to do |format|
    #   format.js
    #   format.json { render 'map', @latlng }
    # end
  end

  
end
