require 'rubygems'
require 'open-uri'
require 'nokogiri'

 doc = Nokogiri::HTML(open('https://twitter.com/caelum'))
# doc = Nokogiri::HTML(open('https://twitter.com/caelum', :proxy => 'https://proxy-ima.ima.sp.gov.br:3128'))

items = doc.css ".content"
items.each do |item|
  autor = item.css(".fullname").first.content
  tweet = item.css(".js-tweet-text").first.content

  puts autor
  puts tweet
  puts
end


