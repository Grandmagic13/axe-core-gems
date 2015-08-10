require_relative 'env'
require 'watir-webdriver'

# module so that our test steps can be driver-agnostic
World(Module.new do
  def visit(url)
    @browser.goto url
  end

  def quit
    @browser.close
  end
end)

Before do
  @browser = Watir::Browser.new $browser
end
