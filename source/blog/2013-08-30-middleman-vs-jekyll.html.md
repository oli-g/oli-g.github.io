---
title: Middleman vs Jekyll
date: 2013-08-30
---

When I finally decided to build this site, my goal was to find a simple and elegant solution for creating, updating and hosting my personal home page and this blog.
Wordpress and other similar CMS were discarded a priori, because I already decided to build this in static HTML. Reasons are countless:

* **Speed**: there's no server side computation, so pages load blazing fast.
* **Simplicity**: no need for a database or a cache store, just a web server. Or not even a web server, if you drop everything on Amazon S3 or GitHub Pages.
* **Security**: no SQL injection risks, no CSRF tokens to handle.
* **Tools**: lot of tools for the job, supporting a number of awesome technologies, such as CoffeeScript, SASS, Markdown, HAML.

Obviously, I would not build a static site without a generator tool that handles links and menus, puts together layouts with page templates and partials and compiles Markdown and SASS files. [A lot of static site generators](https://iwantmyname.com/blog/2011/02/list-static-website-generators.html) arised in these years but, since I love Ruby, my choice would be between Middleman and Jekyll.
READMORE
