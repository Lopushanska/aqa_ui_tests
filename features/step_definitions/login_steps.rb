Given (/^I am not logged in visitor$/) do
  visit '/admin'
end

When (/^Admin is logged in$/) do
  @login_page.username.set @login
  @login_page.password.set @pass
  @login_page.submit.click
end


Then (/^I see logo is displayed$/) do
  expect(@general_page).to have_logotype
end
