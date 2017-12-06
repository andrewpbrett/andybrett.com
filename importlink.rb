require 'date'
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'cgi'
require 'httparty'

page = Nokogiri::HTML(open("https://getpocket.com/@andrewpbrett"))

page.css(".sprofile-post").each do |post|
  url = CGI::parse(URI.parse(post.css("a.sprofile-article-link")[0]['href']).query)["url"][0]
  title = post.css(".sprofile-article-title").text()
  extended = post.css(".sprofile-attribution-quote").text()
  comment = post.css(".sprofile-attribution-comment").text()
  days_ago = post.css(".sprofile-post-time").text().gsub(/[^0-9]/, "").to_i
  date = Date.today - days_ago
  markdown = <<EOF
---
title: "#{title}"
external_link: "#{url}"
---
#{extended && !extended.empty? ? "> #{extended}" : ""}
#{comment}
EOF
  IO.write("./reading/_posts/#{date.strftime("%Y-%m-%d")}-#{title && !title.empty? ? title.gsub(/\s/, '-').downcase : "bookmark"}.md", markdown)
end
