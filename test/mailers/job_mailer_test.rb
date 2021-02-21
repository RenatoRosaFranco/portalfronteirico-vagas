require 'test_helper'

class JobMailerTest < ActionMailer::TestCase
  test "application_sended" do
    mail = JobMailer.application_sended
    assert_equal "Application sended", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "application_received" do
    mail = JobMailer.application_received
    assert_equal "Application received", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
