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
    if params[:search]
      @postings = Posting.search(params[:search]).order("created_at DESC")
    else
      @postings = Posting.all.order('created_at DESC')
    end
  end

  def show
    @posting = Posting.find(params[:id])
  end

  def edit
    @posting = Posting.find(params[:id])
  end

  def update
    @posting = Posting.find(params[:id])
    if @posting.update_attributes(posting_params)
      redirect_to :postings, notice: "Update successful!"
    else
      flash.now[:alert] = "Unable to edit."
      render :edit
    end
  end

  def destroy
    @posting = Posting.find(params[:id])
    @posting.destroy
    flash.now[:alert] = "Posting Destroyed!"
    @postings = Posting.all.order(created_at: :desc)
    render :index
  end

  private
    def posting_params
      params.require(:posting).permit(:company, :title, :description, :salary, :location)
    end
end
