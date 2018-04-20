class MeetingsController < ApplicationController
  def index
    @meetings =  Meeting.order("created_at DESC")
  end

  def new
    @meeting  = Meeting.new
  end

  def create
    User.first.meetings.create(meeting_params)
    redirect_to :root
  end

  def show
    @meeting = Meeting.find(params[:id])
  end


  def search
    @meetings = Meeting.where('title LIKE(?)', "%#{params[:keyword]}%").limit(20)
    render :index
  end

  private

    def meeting_params
      params.require(:meeting).permit(:title, :sales_user, :meeting_place, :body).merge(company_id: Company.first.id)
    end

end
