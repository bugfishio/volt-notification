if ('Notification' in window) {
   // console.log('Notification object exists')
    if (!window.Notification.permission) {
       // console.log('requesting permission')
        window.Notification.requestPermission();
    //} else {
    //    console.log('already has permission')
    }
}
