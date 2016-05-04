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
    @postings = Posting.all.order(created_at: :desc)
  end

  def show
    @posting = Posting.find(params[:id])
  end

  def edit
  end

  private
    def posting_params
      params.require(:posting).permit(:company, :title, :description, :salary, :location)
    end
end
