class TypeAttachmentController < ApplicationController
  layout 'admin'

  before_action :confirm_logged_in
  def index
    @type_attachment = TypeAttachment.sorted
  end

  def show
    @type_attachment = TypeAttachment.find(params[:id])
  end

  def new
    @type_attachment = TypeAttachment.new
  end

  def create
    @type_attachment = TypeAttachment.new(type_attachment_params)
    if @type_attachment.save
      flash[:notice] = "type_attachment created successfully."
      redirect_to type_attachment_path(@type_attachment.id)
    else
      render('new')
    end
  end

  def edit
    @type_attachment = TypeAttachment.find(params[:id])
  end

  def update
    @type_attachment = TypeAttachment.find(params[:id])
    if @type_attachment.update_attributes(type_attachment_params)
      flash[:notice] = "type_attachment update successfully."
      redirect_to type_attachment_path(@type_attachment.id)
    else
      render('edit')
    end
  end

  def delete
    @type_attachment = TypeAttachment.find(params[:id])
  end

  def destroy
    @type_attachment = TypeAttachment.find(params[:id])
    @type_attachment.destroy
    flash[:notice] = "type_attachment '#{@type_attachment.name}' destroyed successfully."
    redirect_to type_attachment_index_path
  end

  private

  def type_attachment_params 
    params.require(:type_attachment).permit(:name)
  end

end
