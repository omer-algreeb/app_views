class MessageController < ApplicationController
  layout 'admin'

  before_action :confirm_logged_in
  def index
    @message = Message.sorted
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save 
      flash[:notice] = "message created successfully."
      redirect_to message_path(@message.id)
    else
      flash[:notice] = @message.errors.full_messages.join(", ")
      
      render('new')
    end
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])
    @message.user_ids << params[:user_ids]
    if @message.update_attributes(message_params)
      flash[:notice] = "message updated successfully."
      redirect_to message_path(@message)
    else
      render('edit')
    end
  end

  def delete
    @message = Message.find(params[:id])
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    flash[:notice] = "message '#{@message.title}' destroyed successfully."
    redirect_to message_index_path
  end

  private

  def message_params 
    params.require(:message).permit(:title, :descrption, :type_message_id, :user_ids)
  end

end
