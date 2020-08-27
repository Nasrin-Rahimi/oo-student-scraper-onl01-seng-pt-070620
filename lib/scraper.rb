require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    
    students = doc.css("div.student-card")
    students_array = []
    students.each do |student|
      student_hash = {}
      student_hash[:name] = student.css("h4.student-name").text
      student_hash[:location] = student.css("p.student-location").text
      # profile_path = student.css("a").attribute("href").value
      # student_hash[:profile_url] = './fixtures/student-site/' + profile_path
      students_array << student_hash
     end
     students_array
     binding.pry
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

