Before do
    Appium::Driver.new(caps)
    Appium.promote_appium_methods Object
    @settings = YAML.load_file(File.expand_path('../../config.yml', File.dirname(__FILE__)))
    $driver.start_driver
    $driver.set_wait(TWENTY_SECONDS)
		
end

After do |scenario|
	
    if scenario.passed?
		unless File.directory?("screenshots") 
			FileUtils.mkdir_p("screenshots")
    
       else  scenario.failed?
           unless File.directory?("screenshots")
               FileUtils.mkdir_p("screenshots")
        
           end
           end

		time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
		screenshot_name = "#{time_stamp}.png"
		screenshot_file = File.join("screenshots", screenshot_name)
		$driver.screenshot(screenshot_file)
		embed("#{screenshot_file}", "image/png")
	end
	$driver.driver_quit
end

AfterConfiguration do
	FileUtils.rm_r("screenshots") if File.directory?("screenshots") 
end
