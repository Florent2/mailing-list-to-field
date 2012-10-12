class ApplicationMailer < ActionMailer::Base

  def test_email(subscriber_email, mailing_list_email)
    # here goes the mailing list email address
    headers["to"] = mailing_list_email
    mail(
                # here is the subscriber email address
      to:       subscriber_email,
      from:     "postmaster@florent-test-mailing.mailgun.org",
      subject:  "subject with a random number #{rand 1000}"
    )
  end
end
