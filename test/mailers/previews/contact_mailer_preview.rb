# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  def contact_email
    ContactMailer.contact_email("oguzgokyuzu@me.com",
       "Oguz Gokyuzu", "345631230", @message = "Will you add different themes for this application?")
  end

  def contact_email2
    ContactMailer.contact_email("burcupe@gmail.com",
      "Burcu Parlaksu", "1234567890", @message = "Hello I am having problems when I try to add a song please help me.")
    end

    def contact_email3
      ContactMailer.contact_email("mertcoban@outlook.com",
        "Mert Coban", "0978456321", @message = "I am having issues when I try to add a note to a song I need help. Thank you.")
      end

end
