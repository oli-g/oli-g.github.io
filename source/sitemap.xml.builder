xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  sitemap.resources.each do |resource|
    if resource.url !~ /(CNAME|\.(xml|txt|css|js|eot|svg|woff|ttf|otf|png|jpg))$/
      xml.url do
        xml.loc "#{data.site.url}#{resource.url}"
        xml.lastmod Time.now.iso8601 
        xml.changefreq "weekly"
      end
    end
  end
end
