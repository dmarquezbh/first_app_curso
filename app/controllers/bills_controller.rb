class BillsController < ApplicationController
  def create
    @bill = Bill.new(params[:bill])
    flash[:notice] = (@bill.save ? t('saved_successfully') : t('error_while_saving'))
  end
end
