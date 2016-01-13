class QuotesController < ApplicationController
  
  def index
    @quotes = Quote.all
  end
  
  def new
    @quote = Quote.new
  end
  
  def create
    @quote = Quote.new(quote_params)
    if @quote.save
      flash[:success] = "New quote saved!"
      redirect_to @quote
    else
      flash[:error] = "There was an error!"
      render :new
    end
  end
  
  def show
    @quote = Quote.find(params([:id]))
  end
  
  def quote_params
    params.require(:quote).permit(:body, :author)
  end
end
