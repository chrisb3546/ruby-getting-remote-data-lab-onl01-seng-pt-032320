# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

 url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
     def initialize(url)
          
     end

    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
      end
     


    def parse_json
          names = JSON.parse(self.get_response_body)
          names.collect do |name|
           name 
         end 
    end

end



# The `GetRequester` class should have a `get_response_body` method that sends a
# GET request to the URL passed in on initialization. This method should return
# the _body_ of the response.

# The `GetRequester` class should have a `parse_json` method should use
# `get_response_body` to send a request, then return a Ruby Array or Hash made up
# of data converted from the response of that request.

# The tests in this lab will use your code to send a request for some JSON data,
# located at
# [https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json][].
# Read the test error messages for additional as you work for additional
# information. Don't forget to require the necessary Ruby modules and classes!

# [https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json]: https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json

# ## Conclusion

# Once you've successfully passed the tests, from this lesson's directory, you
# should be able to open IRB, use `require_relative` to load
# `lib/get_requester.rb`, and send out some requests!

# ```ruby
# get_requester = GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json')
# get_requester.parse_json
# #=> [{"name"=>"Daniel", "occupation"=>"LG Fridge Salesman"}, {"name"=>"Joe", "occupation"=>"WiFi Fixer"}, {"name"=>"Avi", "occupation"=>"DJ"}, {"name"=>"Howard", "occupation"=>"Mountain Legend"}]
# ```

# This class won't work for all cases but is a good starting place to get us off
# the ground. We can now augment our applications with data from the internet!
# Combined with our knowledge of Ruby, we have all the tools we need to start
# building smarter Ruby applications populated with real data.
