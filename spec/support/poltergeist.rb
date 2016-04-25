# Saves page to place specfied at name inside of test.rb definition of:
#   config.integration_test_render_dir = Rails.root.join("spec", "render")

# NOTE: you must pass "js:" for the scenario definition (or else you'll see that render doesn't exist!)
def render_page(name)
  png_name = name.strip.gsub(/\W+/, '-')
  path = File.join(Rails.application.config.integration_test_render_dir, "#{png_name}.png")
  page.driver.render(path)
end

# shortcut for typing save_and_open_page
def page!
  save_and_open_page
end
