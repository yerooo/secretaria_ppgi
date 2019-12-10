Given (/^I am on the log in page$/) do
	visit 'http://192.168.2.15:3000'
end

And (/^I fill in 'email' with 'wallacy@unb.br'$/) do
	fill_in('session[email]', :with=> 'admin@admin.com')
end

And (/^I fill in 'email' with 'invalidbot'$/) do
	fill_in('session[email]', :with=> 'invalidbot')
end

And (/^I fill in 'password' with '123456'$/) do
	fill_in('session[password]', :with=> '123456')
end

When (/^I press 'Entrar' button$/) do
	click_button('Entrar')
end

Then /^I should be on the (.+?) page$/ do |page_name|
  expect(current_url).to eq send("#{page_name.downcase.gsub(' ','_')}_path")
end

