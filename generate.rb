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
    if post_title.nil?
        post_title = "default-title"
    else
        post_title
    end
end

current_time = get_time
date_format = format_date(current_time)
post_title = get_title

post_template = 
"---
layout: post
title: '#{post_title}'
date: #{get_time}
categories: []
---
"

File.open("./_posts/#{date_format}-#{post_title}.md", 'w+'){|f| f.write("#{post_template}")}