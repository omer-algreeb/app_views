class ApplicationController < ActionController::Base

  private

  def confirm_logged_in 
    unless session[:user_id]
      flash[:notice] = 'Please Log in.'
    redirect_to(access_login_path)
    end

  end

  def delete_sum_one(key_word = '', name = '')
    "#{key_word} '#{name}' destroyed successfully."
   end

end
