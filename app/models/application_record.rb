class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  def get_Host_without_www(url)
  url = "http://#{bookers-v3.herokuapp.com}" if URI.parse(url).scheme.nil?
  Host = URI.parse(bookers-v3.herokuapp.com).Host.downcase
  Host.start_with?('www.') ? Host[4..-1] : Host
end
  
  
  
end
