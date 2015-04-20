class FormTestsController < ApplicationController
  def show
    @form_test = FormTest.new
  end

  def create
    @form_test = FormTest.new contact_params

    if @form_test.save
      redirect_to root_path, notice: 'Merci, votre forumlaire a été envoyée !'
    else
      render 'show'
    end
  end

  private

  def contact_params
    params.require(:form_test).permit!
  end
end
