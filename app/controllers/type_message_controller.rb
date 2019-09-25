class TypeMessageController < ApplicationController
  layout 'admin'

  before_action :confirm_logged_in
  def index
    @type_message = TypeMessage.sorted
  end

  def show
    @type_message = TypeMessage.find(params[:id])

  end

  def new
    @type_message = TypeMessage.new

  end

  def create
    @type_message = TypeMessage.new(type_message_params)
    if @type_message.save
      flash[:notice] = "type_message created successfully."
      redirect_to type_message_path(@type_message.id)
    else
      render('new')
    end
  end

  def edit
    @type_message = TypeMessage.find(params[:id])
  end

  def update
    @type_message = TypeMessage.find(params[:id])
    if @type_message.update_attributes(type_message_params)
      flash[:notice] = "type_message update successfully."
      redirect_to type_message_path(@type_message.id)
    else
      render('edit')
    end
  end

  def delete
    @type_message = TypeMessage.find(params[:id])
  end

  def destroy
    @type_message = TypeMessage.find(params[:id])
    @type_message.destroy
    flash[:notice] = "type_message '#{@type_message.name}' destroyed successfully."
    redirect_to type_message_index_path
  end

  private

  def type_message_params 
    params.require(:type_message).permit(:name)
  end
end
