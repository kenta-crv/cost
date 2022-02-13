class EstimateMailer < ActionMailer::Base
  default from: "cost@comicomi.cc"
  #default to: @estimate.email

  #def send_when_admin_reply(estimate) #メソッドに対して引数を設定
  #  @estimate = estimate
  #  mail to: estimate.email,
  #           subject: '【株式会社Ri-Plus】 お問い合わせありがとうございます。'
  #end

  def received_email(estimate)
    @estimate = estimate
    mail to: "cost@comicomi.cc"
    mail(subject: '社会保険適正化コンサルティングよりお問い合わせがありました') do |format|
      format.text
    end
  end

  def send_email(estimate)
    @estimate = estimate
    mail to: estimate.mail
    mail(subject: 'お問い合わせ頂きありがとうございます｜社会保険適正化コンサルティング') do |format|
      format.text
    end
  end

end
