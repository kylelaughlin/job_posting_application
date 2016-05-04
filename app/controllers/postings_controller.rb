class PostingsController < ApplicationController
  def new
    @posting = Posting.new
  end

  def create
    @posting = Posting.new(posting_params)
    if @posting.save
      redirect_to :postings, notice: "Successfully created!"
    else
      flash.now[:alert] = "Couldn't save"
      render :new
    end
  end

  def index
  end

  def show
  end

  def edit
  end

  private
    def posting_params
      params.require(:posting).permit(:company, :title, :description, :salary, :location)
    end
end
