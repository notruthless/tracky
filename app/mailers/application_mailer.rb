class ApplicationMailer < ActionMailer::Base
  helper ApplicationHelper

  default from: "no_reply@example.com"
  layout 'mailer'
end
