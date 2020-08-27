require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    
    students = doc.css("div.student-card")
    student_array = []
    students.each do |student|
     
    #   student_index_array <<  student.css(".student-name").text
     binding.pry
    #   # student_index_array << {"location" , student.css(".student-location").text}
    #   # student_index_array[:url] = student.css("a")student.css("a")
     end
    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

