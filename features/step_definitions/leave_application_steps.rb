Given /^the following leave_applications:$/ do |leave_applications|
  LeaveApplication.create!(leave_applications.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) leave_application$/ do |pos|
  visit leave_applications_path
  all('a[data-method=delete]')[pos.to_i-1].click
end

Then /^I should see the following leave_applications:$/ do |expected_leave_applications_table|
  #expected_leave_applications_table.diff!(find('table').all('tr').map { |row| row.all('th, td').map { |cell| cell.text.strip } })
end
