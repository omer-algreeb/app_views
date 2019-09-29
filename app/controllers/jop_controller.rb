class JopController < ApplicationController
  layout 'admin'

  before_action :confirm_logged_in
  def index
    @jop = Jop.sorted
  end

  def show
    @jop = Jop.find(params[:id])
  end

  def new
    @jop = Jop.new
  end

  def create
    @jop = Jop.new(jop_params)
    if @jop.save
      flash[:notice] = "jop created successfully."
      redirect_to jop_path(@jop.id)
    else
      render('new')
    end
  end

  def edit
    @jop = Jop.find(params[:id])
  end

  def update

    @jop = Jop.find(params[:id])
    if @jop.update_attributes(jop_params)
      flash[:notice] = "jop updated successfully."
      redirect_to jop_path(@jop)
    else
      render('edit')
    end
    
  end

  def delete
    @jop = Jop.find(params[:id])
  end

  def destroy
    @jop = Jop.find(params[:id])
    @jop.destroy
    flash[:notice] = delete_sum_one('jop', @jop.name)
    redirect_to jop_index_path
  end

  private

  def jop_params 
    params.require(:jop).permit(:name)
  end
end
