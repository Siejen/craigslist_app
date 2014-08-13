# scrapper.rb
require 'nokogiri'
require 'open-uri'



def filter_links(rows, regex)
  # takes in rows and returns uses
  # regex to only return links
  # that have "pup", "puppy", or "dog"
  # keywords
end

def get_todays_rows(doc, date_str)
  #  1.) open chrome console to look in inside p.row to see
  #  if there is some internal date related content

  #  2.) figure out the class that you'll need to select the
  #   date from a row

end

def get_page_results
  url = "http://sfbay.craigslist.org/sfc/pet/"
  Nokogiri::HTML(open(url))
end

def search(date_str)
  file = "today.html"
  doc = Nokogiri::HTML(open(file))

  # get todays rows
  results = doc.css(".row")
  dogs = results.select {|row| row.css(".hdrlnk").text.match(/(puppy|pup|dog)/)}
  final_result = dogs.select {|row| row.css(".date").text.match(/(Aug 12)/)}
  puts final_result
end

#playing with time


# want to learn more about
# Time in ruby??
#   http://www.ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/Date.html#strftime-method
today = Time.now.strftime("%b %d")
search(today)












