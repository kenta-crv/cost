class EstimatesController < ApplicationController
  def index
    @estimate = Estimate.new
    render :action => 'index'
  end

  def confirm
    @estimate = Estimate.new(estimate_params)
    if @estimate.valid?
      render :action =>  'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
    @estimate = Estimate.new(estimate_params)
    @estimate.save
    EstimateMailer.received_email(@estimate).deliver
    EstimateMailer.send_email(@estimate).deliver
  end

  private
  def estimate_params
    params.require(:estimate).permit(
      :company, #会社名
      :name, #担当者名
      :tel, #電話番号
      :mail, #メールアドレス
      :address, #住所
      :url, #会社URL
      :saraly_month, #とある1名の月額報酬
      :saraly_year, #とある1名の年間報酬
      :target, #役員人数
      :fiscal_year, #決算期
      :period, #導入時期
      :remarks #その他
    )
  end
end
