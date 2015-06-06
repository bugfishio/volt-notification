# Volt::Notification

Implementation of the HTML5 Notification API for Volt

## Installation

Add this line to your application's Gemfile:

    gem 'volt-notification'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install volt-notification

## Usage

add the tag <:notification> to your view.

To send a notification to all users, add a NotificaitonMessage to the page._notification_messages arraymodel:

`page._notification_messages << NotificationMessage.say('Title','Body of the message')`

To send a notification to the logged in user, add a NotificationMessage to the current_user:

`current_user._notification_messages << NotificaitonMessage.say('Title','Body of the message')`

## Contributing

1. Fork it ( http://github.com/[my-github-username]/volt-notification/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
