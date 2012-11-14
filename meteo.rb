require 'rubygems'
require 'hpricot'
require 'open-uri'

doc = open("http://www.meteo.lv/laiks/?nid=558") { |f| Hpricot(f) }

doc.search('#forecast_list/div[@class="forecast_list_item"]').each {|div|
  print "#{div.children[1].children[1].children[1].inner_text} #{div.children[3].children[1].inner_text}\n"
}