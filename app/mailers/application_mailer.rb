class ApplicationMailer < ActionMailer::Base
  default from: 'mailer@domain.com'
  layout 'mailer'
end
