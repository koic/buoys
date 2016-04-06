module Buoys
  class Railtie < ::Rails::Railtie
    initializer 'buoys' do |_app|
      ActiveSupport.on_load(:action_view) do
        ActionView::Base.send :include, Buoys::Helper
      end
    end
  end
end