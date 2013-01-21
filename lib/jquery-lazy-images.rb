module Jquery
  module LazyImages
    class Options
      def self.configure(name, value = nil)
        class_attribute(name)
        self.send(:"#{name}=", value)
      end
      configure :default_image, 'grey.gif'
    end
  end
end

require 'jquery/lazy-images/engine'
require 'action_view/helpers/image_tag_helper'