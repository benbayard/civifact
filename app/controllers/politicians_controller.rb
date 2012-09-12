class PoliticiansController < ApplicationController
  before_filter :init_politicians, only: [:index, :compare]
  before_filter :find_politician_by_id, only: [:edit, :show, :update, :destroy]
  def index
    @politicians << Politician.where(:last_name => "Obama").first
    @politicians << Politician.where(:last_name => "Romney").first
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @issues = Issue.all
    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def compare
    @politicians << Politician.where(last_name: params[:this]).first
    @politicians << Politician.where(last_name: params[:that]).first
    @all_politician_names = []
    @all_politician_names = Politician.all.map {|politician| politician.name}
    respond_to do |format|
      format.html
    end
  end


  def new
    @politician = Politician.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    @politician = Politician.new(params[:politician])
    respond_to do |format|
      if @politician.save
        format.html { redirect_to @politician, notice: 'Politician was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @issues = Issue.all
  end

  def switch
    @to = Politician.where("first_name like ? OR last_name like ?", params[:name].split[0], params[:name].split[1])
  end

  def update

    respond_to do |format|
      if @politician.update_attributes(params[:politician])
        format.html { redirect_to @politician, notice: 'Politician was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @politician.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @politician.destroy
    respond_to do |format|
      format.html { redirect_to politicians_url }
    end
  end

  protected
    def init_politicians 
      @counter = 0
      @issues = Issue.all
      @politicians = []
    end
    def find_politician_by_id 
      @politician = Politician.find(params[:id])
    end

end
