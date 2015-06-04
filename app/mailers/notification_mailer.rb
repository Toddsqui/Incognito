class NotificationMailer < ActionMailer::Base
  default from: "no-reply@memoryarsenal.com"

  def comment_added
  	mail(to: "todd.squitieri@alumni.newschool.edu", subject: "A comment has been added to your place")
  end
end
