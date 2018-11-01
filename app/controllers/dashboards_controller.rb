class DashboardsController < ApplicationController
  # def home
  #   @search_key = (params[:search])
  #   number = 10
  #   search_result(number, @search_key)
  # end

  def index
    @results = Result.paginate(:page => params[:page], :per_page => 10)
  end

  def search_result
    number = 10
    search_key = params[:search]
    @data = Bot.search_words number, "#"+search_key
      @data.each do |data|
        twitter_id = data.id
        unless Result.find_by(twitter_id: twitter_id).present?
          tweet = data.text
          Result.create(twitter_id: twitter_id, tweet: tweet, search_key: search_key)
        end
      end
      puts "data==========>",@data
  end
end
