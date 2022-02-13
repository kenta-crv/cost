class ContactMailer < ActionMailer::Base
  default from: "cost@comicomi.cc"
  def received_email(contact)
    @contact = contact
    mail to: "cost@comicomi.cc"
    mail(subject: '社会保険適正化コンサルティングよりお問い合わせがありました') do |format|
      format.text
    end
  end

  def send_email(contact)
    @contact = contact
    mail to: contact.email
    mail(subject: '社会保険適正化コンサルティングにお問い合わせ頂きありがとうございます｜Ri-Novas') do |format|
      format.text
    end
  end

end
