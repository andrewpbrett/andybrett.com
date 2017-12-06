require 'exifr/jpeg'
require 'date'

unless ARGV[0]
  puts "usage: importphoto.rb filename [caption]"
  exit
end

photo_path = ARGV[0]
photo_filename = "#{DateTime.now.strftime("%Y%m%d%H%M%S")}.jpg"
caption = ARGV[1] || ""

begin
  exif = EXIFR::JPEG.new(photo_path)
  post_date = exif.date_time_digitized
rescue
  post_date = File.mtime(photo_path)
end
post_date ||= File.mtime(photo_path)

%x(scp "#{photo_path}" apb@165.227.29.220:~/andybrett.com/assets/photos/originals/#{photo_filename})
markdown = <<EOF
---
caption: "#{caption}"
filename: "#{photo_filename}"
fstop: "#{exif && exif.respond_to?(:f_number) && exif.f_number ? "f/#{exif.f_number.to_f.to_s}" : "Unknown"}"
exposure: "#{exif && exif.respond_to?(:exposure_time) && exif.exposure_time ? "#{exif.exposure_time.to_s}" : "Unknown"}"
---
EOF

markdown_filename = post_date.strftime("%Y-%m-%d-")
if caption.empty?
  markdown_filename += post_date.strftime("%Y-%m-%d-%H")
  markdown_filename += "-photo"
else
  markdown_filename += caption.gsub("\s", '-').gsub(/[^A-Za-z0-9\-]/, '').downcase
end
markdown_filename += ".md"
markdown_path = "./photos/_posts/#{markdown_filename}"
IO.write(markdown_path, markdown)
# %x(git add #{markdown_path}; git commit -m "new photo post: #{markdown_filename}")
