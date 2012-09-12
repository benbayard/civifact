class IssuesController < ApplicationController
  def new
    @issue = Issue.new
  end

  def create 
    @issue = Issue.new(params[:issue])
    if @issue.save
        format.html { redirect_to @issue, notice: 'Issue was successfully created.' }
    else
        format.html { render action: "new" }
    end
  end

  def show
    @issue = Issue.find(params[:id])
  end
end
