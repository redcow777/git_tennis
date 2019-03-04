require 'mechanize'
agent = Mechanize.new
page = agent.get("https://www.tennisoff.net/off/1383753")
#elements = page.search('span#off_date')
#elements = page.search('td')

#places = page.search('h2#h2_off_place')

elements = page.search('h1')


  puts elements.inner_text