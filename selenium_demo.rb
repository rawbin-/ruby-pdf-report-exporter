require 'selenium-webdriver'

options = Selenium::WebDriver::Chrome::Options.new(args: ['--headless'])

driver = Selenium::WebDriver.for(:chrome, capabilities: options)
# driver = Selenium::WebDriver.for(:chrome)

driver.get 'http://www.baidu.com'

driver.manage.add_cookie({ name: 'xxxtoken', value: 'xxxvalue', path: '/', domain: '.baidu.com' })

driver.save_print_page('selenium-out.pdf')

driver.quit
