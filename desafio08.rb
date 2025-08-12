require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('example.com', 443)
https.use_ssl = true

response = https.get('/')

doc = Nokogiri::HTML(response.body)

puts "### Conteúdo das tags '<p></p>' encontradas:"
doc.css('p').each do |p|
    puts "- #{p.content}"
end
