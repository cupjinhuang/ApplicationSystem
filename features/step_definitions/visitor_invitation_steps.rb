Given /^the following visitor_invitations:$/ do |visitor_invitations|
  VisitorInvitation.create!(visitor_invitations.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) visitor_invitation$/ do |pos|
  visit visitor_invitations_path
  all('a[data-method=delete]')[pos.to_i-1].click
end

Then /^I should see the following visitor_invitations:$/ do |expected_visitor_invitations_table|
  #expected_visitor_invitations_table.diff!(find('table').all('tr').map { |row| row.all('th, td').map { |cell| cell.text.strip } })
end
