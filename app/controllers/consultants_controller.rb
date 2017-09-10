class ConsultantsController < ApplicationController
  def index
    @locations = Consultant.order(:locality).pluck(:locality).uniq
    @q = Consultant.ransack(params[:q])
    @filtered_consultants = @q.result(distinct: true)
  end
end
