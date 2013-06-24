class BillsController < ApplicationController
  def create
    @bill = Bill.new(params[:bill])
    flash[:notice] = (@bill.save ? t('saved_successfully') : t('error_while_saving'))
  end

  def destroy 
    @bill = Bill.find(params[:id])
    @bill.destroy
  end

  def edit
    @bill = Bill.find(params[:id])
  end 

  def update
    @bill = Bill.find(params[:id])
    flash[:notice] = (@bill.update_attributes(params[:bill]) ? t('updated_successfully') : t('error_while_updating'))
  end
end
