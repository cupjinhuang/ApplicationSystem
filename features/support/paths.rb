# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/'
    when /the new leave_application page/
      new_leave_application_path

    when /the new leave_grant page/
      new_leave_grant_path

    when /the new visitor_invitation page/
      new_visitor_invitation_path

    when /the new conference_grant page/
      new_conference_grant_path


    when /the edit leave_application (.*) page/
      edit_leave_application_path($1)

    when /the edit leave_grant (.*) page/
      edit_leave_grant_path($1)

    when /the edit visitor_invitation (.*) page/
      edit_visitor_invitation_path($1)

    when /the edit conference_grant (.*) page/
      edit_conference_grant_path($1)


    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
