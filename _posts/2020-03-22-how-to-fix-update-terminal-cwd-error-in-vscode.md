---
layout: post
title: "How to fix update_terminal_cwd error when opening terminal in VSCode"
date: 2020-03-22 15:25:16 +0900
categories: ["bug", "vscode"]
---

If you are having problem where your bash in terminal is always showing `update_terminal_cwd: command not found`
you can put the bash script below to your bash_profile to resolve it.

{% highlight bash %}
update_terminal_cwd() {
local SEARCH=' '
local REPLACE='%20'
local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
printf '\e]7;%s\a' "\$PWD_URL"
}
{% endhighlight %}

**Refference:** [https://github.com/platformio/platformio-atom-ide-terminal/issues/196](https://github.com/platformio/platformio-atom-ide-terminal/issues/196)

I hope it usefull.
