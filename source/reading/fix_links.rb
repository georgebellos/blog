mdown = File.new("./index.markdown", "w")
text = []
file = File.open("./index.html") do |f|
  f.each_line do |line|
    text << line.split(/\?Sub.*(?=\))/)
   # clean_url = line.gsub(/\?.*(?=\))/, '')
   # if clean_url
   #   text << clean_url
   # else
   #   text << line
   # end
  end
  mdown.puts text
  mdown.close
end

#f = File.new("./index.markdown", "w")
#f.puts text
##puts f.read
#f.close
#
#
#