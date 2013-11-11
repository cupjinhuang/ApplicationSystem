Given /^the following leave_grants:$/ do |leave_grants|
  LeaveGrant.create!(leave_grants.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) leave_grant$/ do |pos|
  visit leave_grants_path
  all('a[data-method=delete]')[pos.to_i-1].click
end

Then /^I should see the following leave_grants:$/ do |expected_leave_grants_table|
  #expected_leave_grants_table.diff!(find('table').all('tr').map { |row| row.all('th, td').map { |cell| cell.text.strip } })
end
