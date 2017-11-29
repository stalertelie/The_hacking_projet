class EmailController < ApplicationController
  def index
  	 @emails = Email.all
  	 respond_to do |format|
    format.html
    format.json
	end
  end

  def delete 
  end

  def show 
  	@email = Email.find(params[:id])
  	respond_to do |format|
        format.html 
        format.json 
        format.js   { render :layout => false }
     end
  end

  def destroy
     @email = email.find(params[:id])
     @email.destroy
     
     respond_to do |format|
        format.html { redirect_to emails_url }
        format.json { head :no_content }
        format.js   { render :layout => false }
     end
     
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email
      @email = Email.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_params
      params.require(:email).permit(:object, :body)
    end
end


