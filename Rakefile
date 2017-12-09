desc 'create new post '
# rake new "New post title goes here"
task :new_post, [:title] do |t, args|
  title = args[:title]
  slug = title.gsub(' ','-').gsub(/[\'\?\:\.]/, '').downcase

  filename = "#{Time.new.strftime('%Y-%m-%d')}-#{slug}.md"

  path = File.join("writing/_posts", filename)
  post = <<-HTML
---
title: "#{title}"
---

HTML
  File.open(path, 'w') do |file|
    file.puts post
  end
  puts "new post generated in #{path}"
  system "atom #{path}"
end
