Given /^the following conference_grants:$/ do |conference_grants|
  ConferenceGrant.create!(conference_grants.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) conference_grant$/ do |pos|
  visit conference_grants_path
  all('a[data-method=delete]')[pos.to_i-1].click
end

Then /^I should see the following conference_grants:$/ do |expected_conference_grants_table|
  #expected_conference_grants_table.diff!(find('table').all('tr').map { |row| row.all('th, td').map { |cell| cell.text.strip } })
end
