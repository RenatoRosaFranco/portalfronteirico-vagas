require 'test_helper'

class NewsletterMailerTest < ActionMailer::TestCase
  test "signup" do
    mail = NewsletterMailer.signup
    assert_equal "Signup", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "cancel" do
    mail = NewsletterMailer.cancel
    assert_equal "Cancel", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
