include ApplicationHelper

def sign_in(user, options={})  
  visit signin_path
  fill_in "session[email]",    with: user.email
  fill_in "session[password]", with: user.password
  click_button "Sign in"
end

def website_title
  return "Pistachio"
end