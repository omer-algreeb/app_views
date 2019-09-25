class AttachmentController < ApplicationController
  layout 'admin'

  before_action :confirm_logged_in
  def index
    @attachment = Attachment.sorted
  end

  def show
    @attachment = Attachment.find(params[:id])
  end

  def new
    @attachment = Attachment.new
  end
  
  def create
    @attachment = Attachment.new(attachment_params)
    
    if @attachment.save
      flash[:notice] = "attachment create successfully."
      redirect_to attachment_path(@attachment.id)
    else
      render('new')
    end
  end

  def edit
    @attachment = Attachment.find(params[:id])
  end

  def update
    @attachment = Attachment.find(params[:id])
    if @attachment.update_attributes(attachment_params)
      flash[:notice] = "attachment update successfully."
      redirect_to attachment_path(@attachment.id)
    else
      render('edit')
    end
  end

  def delete
    @attachment = Attachment.find(params[:id])
  end

  def destroy
    @attachment = Attachment.find(params[:id])
    @attachment.destroy
    flash[:notice] = "ttachment '#{@attachment.name}' destroyed successfully."
    redirect_to attachment_index_path
  end

  private

  def attachment_params 
    params.require(:attachment).permit(:file, :message_id)
  end
end
