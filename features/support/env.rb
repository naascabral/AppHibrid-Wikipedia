$:.unshift("#{File.dirname(__FILE__)}/../../lib/")

require 'appium_lib'
require 'yaml'
require 'faker'

SERVER_URL = 'http://localhost:4723/wd/hub'
PORT = 4723
TWENTY_SECONDS = 20

Before do
def caps
{ caps: { deviceName: 'Nexus_5X_API_24',
            platformName: :Android,
            app: (File.join(File.dirname(__FILE__), "org.wikipedia_2.5.195-r-2017-04-21-195_minAPI16(arm64-v8a,armeabi,armeabi-v7a,mips,x86,x86_64)(nodpi)_apkmirror.com.apk")),
            
            newCommandTimeout: "3600",
    appium_lib: { server_url: SERVER_URL,
                port: PORT
                }
    
}}  

end
end


def find_element_in_list(text)
15.times{ Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.7, end_x: 0.7, end_y: 0.1, duration: 1200).perform}

current_screen = get_source
previous_screen = ""

end
def find_element_in_list_save(text)
4.times{ Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.7, end_x: 0.7, end_y: 0.1, duration: 250).perform}
        
current_screen = get_source
previous_screen = ""
end
        