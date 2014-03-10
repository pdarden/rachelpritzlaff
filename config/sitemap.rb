require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'http://www.rachelpritzlaff.com'
SitemapGenerator::Sitemap.create do
  add '/bio', :changefreq => 'monthly', :priority => 0.8
  add '/upcoming', :changefreq => 'monthly', :priority => 0.8
  add '/repertory', :changefreq => 'monthly', :priority => 0.8
  add '/subscribe-donate', :changefreq => 'monthly', :priority => 0.8
  add '/contact', :changefreq => 'monthly', :priority => 0.8
end
SitemapGenerator::Sitemap.ping_search_engines
