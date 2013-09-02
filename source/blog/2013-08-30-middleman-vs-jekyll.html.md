---
title: "Static site generators: Middleman or Jekyll?"
date: 2013-08-30
---

When I finally decided to build this site, my ultimate goal was to find a simple and elegant solution for creating, updating and hosting my personal home page and this blog.
Wordpress and other similar CMS were discarded a priori, because I already decided to build this in static HTML. Reasons are countless:

* **Speed**: no server side computation, pages load blazing fast.
* **Simplicity**: no need for a database or a cache store, just a web server. Or not even a web server, if you drop everything on Amazon S3 or GitHub Pages.
* **Security**: no SQL injection risks, no CSRF tokens to handle.
* **Tools**: lot of tools for the job, supporting a number of awesome technologies, such as CoffeeScript, SASS, Markdown, HAML.

READMORE

### Static site generators

Obviously, I would not build a static site without a generator tool that handles links and navigation, applies a common layout to all page templates and compiles Markdown and SASS files. Rather than writing manually each line of HTML, copying and pasting the common parts between pages, a static site generator allows you to organize the HTML source in layouts, pages and partials, avoiding duplication. A static site generator worthy of the name should compile any modern pre-process language like HAML, Markdown, SASS or CoffeeScript, spitting out plain old HTML, CSS and JavaScript files.

A lot of [static site generators](https://iwantmyname.com/blog/2011/02/list-static-website-generators.html) arised in these years: they can make life easier not only for bloggers striving to avoid Wordpress, but even for web designers and developers when prototyping web properties or web applications. Even people not so confident with the command line can leverage on some nice GUI tools ([CodeKit](http://incident57.com/codekit), [Hammer](http://hammerformac.com) and [Mixture](http://mixture.io), just to name a few) or web applications (check [Webpop](http://www.webpop.com) and [EnsoCloud](http://www.ensocloud.com/)).

Since I love Ruby, my choice was between Middleman and Jekyll.
