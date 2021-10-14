require 'nokogiri'
require 'open-uri'
require 'pry'


URL = "https://annuaire-des-mairies.com/val-d-"

def cities_url_95
  cities_small_url = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/val-d-oise.html")).xpath('//a[@class="lientxt"]/@href')  
  cities_url = cities_small_url.map {|x| "https://www.annuaire-des-mairies.com" + x.text[1..-1]}
  return cities_url
end
# puts "cities_url_95 :"
# print cities_url_95

def cities_95
  page = Nokogiri::HTML(URI.open("https://annuaire-des-mairies.com/val-d-oise.html"))
    cities_95 = page.xpath('//a[@class="lientxt"]') 
  return cities_95
end
# puts city_95

def get_city_email
  list_mail = cities_url_95.map{ |x| 
      Nokogiri::HTML(URI.open(x)).xpath('//*[contains(text(), "@")]')
        }

  mail_hash = []
    for a in 0..cities_95.length-1 do 
      mail_hash[a] = Hash.new
      mail_hash[a][cities_95[a].text] = list_mail[a].text
    end
  puts mail_hash
  return mail_hash
end

get_city_email
