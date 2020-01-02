#! /usr/bin/ruby
# post generator
def get_time
    t = Time.now
end

def format_date(t)
    date_format = t.strftime("%Y-%m-%d")
end

def get_title
    post_title = ARGV[0]
end

current_time = get_time
date_format = format_date(current_time)
post_title = get_title

File.open("./_posts/#{date_format}-#{post_title}.md", 'w+'){|f| f.write("tweeting, miaw, lol")}