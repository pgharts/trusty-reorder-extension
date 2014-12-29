# Uncomment this if you reference any of your controllers in activate
require_dependency 'application_controller'

class ReorderExtension < TrustyCms::Extension
  version "1.0.2"
  description "Allows (re)ordering of pages in the page tree."
  url "https://github.com/pgharts/trusty-reorder-extension"
    
  def activate
    admin.page.index.add :sitemap_head, "order_header"
    admin.page.index.add :node, "order"
    admin.page.index.add :top, 'header'
    Page.send :include, Reorder::PageExtensions
    Admin::PagesController.send :include, Reorder::PagesControllerExtensions
    Admin::PagesController.send :helper, Reorder::PageHelper
    StandardTags.send :include, Reorder::TagExtensions
  end
end
