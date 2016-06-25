begin
  require 'json'
  require 'open-uri'
  require 'timeout'
rescue
else

  def get_metadata()
    metadata = JSON.parse(open("http://169.254.169.254/metadata/v1.json").read)
    Facter.add(:digitalocean) { setcode { metadata } }
  end

  begin
    Timeout::timeout(1) { get_metadata }
  rescue Exception
    puts "Digital Ocean Metadata Unavailable"
  end

end
