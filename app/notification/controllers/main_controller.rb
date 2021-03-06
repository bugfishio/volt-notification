module Notification
  class MainController < Volt::ModelController

		def index
      puts 'Hello from Notification Component Setup'
			page.notification_messages.on('added') do |pos|
        puts "message_added #{pos.to_s}"
        notification = page.notification_messages[pos]
				volt_notify(notification)
			end

      Volt.current_user.then do |user |
        user.notification_messages.on('added') do |pos|

          puts "message_added #{pos.to_s}"
          notification = page.notification_messages[pos]
          volt_notify(notification)
        end if user
      end
		end

    def auto_close_time
      #puts attrs.auto_close_time
      attrs.auto_close_time ? attrs.auto_close_time.to_i : 0

    end

    def default_icon
      attrs.default_icon ? attrs.default_icon : 'favicon.ico'
    end

    def direction
      attrs.direction ? attrs.direction : 'auto'
    end

    def volt_notify(msg)
      #puts "volt_notify"
       if `'Notification' in window`
         #puts "has Notifican Object"

        ` if (!window.Notification.permission) {
             console.log('requesting permission')
         window.Notification.requestPermission();
         }`
         if (`window.Notification.permission`)
           puts "has permission: #{msg.body}"
           ztitle = msg.title
           zbody = msg.body
           zdir = msg.direction ? msg.direction : direction
           zlang = msg.language
           zicon = msg.icon && msg.icon != '' ? msg.icon : default_icon
           ztag =  msg.tag

           `notification = new window.Notification(ztitle,
              {dir: zdir,
               lang: zlang,
               icon: zicon,
               tag: ztag,
               body: zbody});`
           #puts notification
         end

         if (auto_close_time > 0)
           act = auto_close_time
           puts "autoclose"
           `setTimeout(function () {
                        notification.close(); //closes the notification
                      }, act);`
         end
       end
    end

  private

  end
end
