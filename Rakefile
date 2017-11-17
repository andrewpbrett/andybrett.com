desc 'create new post or bookmark. args: type (post, bookmark), title, slug'
# rake new type=(bookmark|post) future=0 title="New post title goes here" slug="slug-override-title"
task :new do
  type = ENV["type"] || "bookmark"
  title = ENV["title"] || "New Title"
  external_link = ENV["link"] || "LINK"
  slug = title.gsub(' ','-').gsub(/[\'\?\:\.]/, '').downcase
  slug = ENV["slug"].gsub(' ','-').downcase if ENV["slug"]

  filename = "#{Time.new.strftime('%Y-%m-%d')}-#{slug}.md"

  path = File.join("_posts", filename)
  post = <<-HTML
---
type: TYPE
title: "TITLE"
external_link: LINK
---

HTML
  post.gsub!('TITLE', title).gsub!('TYPE', type).gsub!('LINK', external_link)
  File.open(path, 'w') do |file|
    file.puts post
  end
  puts "new #{type} generated in #{path}"
  system "subl #{path}"
end
