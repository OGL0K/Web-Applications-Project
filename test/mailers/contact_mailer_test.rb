require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase

  test "should return contact email" do
    mail = ContactMailer.contact_email("oguzgokyuzu@me.com",
      "Oguz Gokyuzu", "345631230", @message = "Will you add different themes for this application?")
      assert_equal ['info@mynotes.com'], mail.to
      assert_equal ['info@mynotes.com'], mail.from
    end

    test "should return contact email2" do
      mail = ContactMailer.contact_email("burcupe@gmail.com",
        "Burcu Parlaksu", "1234567890", @message = "Hello I am having problems when I try to add a song please help me.")

      assert_equal ['info@mynotes.com'], mail.to
      assert_equal ['info@mynotes.com'], mail.from
  end
  test "should return contact email3" do
    mail = ContactMailer.contact_email("mertcoban@gmail.com",
      "Mert Coban", "0978456321", @message = "I am having issues when I try to add a note to a song I need help. Thank you.")

    assert_equal ['info@mynotes.com'], mail.to
    assert_equal ['info@mynotes.com'], mail.from
  end
end
