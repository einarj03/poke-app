class ReportsController < ApplicationController

  def new
    set_user
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    @report.reporter_id = current_user.id
    @reportee = set_user
    @report.reportee_id = @reportee.id
    if @report.save
      redirect_to user_path(@reportee)
      flash[:notice] = "Succesfully reported"
    else
      render :new
    end
  end

  private

  def report_params
    params.require(:report).permit(:description)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
