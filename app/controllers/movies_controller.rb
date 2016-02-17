class MoviesController < ApplicationController


  def index

    title = params[:movie_title]
  response = HTTParty.get("http://www.omdbapi.com/?t=#{title}");
       @result = JSON.parse(response.body)

       year = params[:year_made]
     response = HTTParty.get("http://www.omdbapi.com/?t=#{title}&y=#{year}");
          @result = JSON.parse(response.body)


end

end
