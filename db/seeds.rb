schools_file = File.join(File.dirname(__FILE__), 'dat', 'schools.dat')
if File.stat(schools_file).size > 0
  puts "[#{Time.now.to_s}] load School"
  File.foreach(schools_file) do |record|
    s = School.new
    s.name = record.chomp
    s.save!
  end
end