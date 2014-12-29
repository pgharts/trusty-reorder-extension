module Reorder
  class Engine < Rails::Engine
    paths["app/helpers"] = []

    initializer "reorder.assets.precompile" do |app|
      app.config.assets.precompile += %w(admin/reorder.css)
    end
  end
end
