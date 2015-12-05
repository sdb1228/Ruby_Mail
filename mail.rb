require 'gmail'

username = "EMAIL"
password = "PASSWORD"
Gmail.connect(username, password) do |gmail|
	puts gmail.inbox.count
	gmail.deliver do
	  to "TO"	  
	  subject "Having fun in Puerto Rico!"
	  text_part do
	    body "Text of plaintext message."
	  end
	end
	puts gmail.logged_in?
	puts"sent"
end
