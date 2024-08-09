module Capybara
  class Session
    def within_shadow_dom(host_selector, &block)
      shadow_root = evaluate_script("document.querySelector('#{host_selector}').shadowRoot")
      raise "Shadow DOM root not found" if shadow_root.nil?

      within(:xpath, "//*[@shadowroot]", &block)
    end
  end

module Node
  # Modulo para set de configurações border collor
  class Element
    def root_element
      self
    end

    def set(value, **options)
      set_color_border
      raise Capybara::ReadOnlyElementError, "Attempt to set readonly element with value: #{value}" if ENV['CAPYBARA_THOROUGH'] && readonly?

      options = session_options.default_set_options.to_h.merge(options)
      synchronize { base.set(value, **options) }
      self
    end

    def click(*keys, **options)
      set_color_border
      perform_click_action(keys, **options) { |k, opts| base.click(k, **opts) }
    end

    def set_color_border
      js("self.setAttribute('style','border: 4px solid #ba2c73')")
    end

    def js_anon_func(script, arg)
      '
      (function(root, document, self) {
          ' + script + '
      })(window, document, ' + arg + ');
      '
    end

    def js(script)
      Capybara.page.execute_script(js_anon_func(script, 'arguments[0]'), root_element)
    end
  end
end
end
