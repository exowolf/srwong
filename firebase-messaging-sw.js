importScripts('https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.10.0/firebase-messaging.js');
firebase.initializeApp({apiKey: "AIzaSyALdpb3H-fsQrLq3JrJt61jp3cG7vtnYaU",authDomain: "srwong-app.firebaseapp.com",projectId: "srwong-app",storageBucket: "srwong-app.appspot.com", messagingSenderId: "596098361190", appId: "1:596098361190:web:e37db47ed624672f3c0aa7"});
const messaging = firebase.messaging();
messaging.setBackgroundMessageHandler(function (payload) { return self.registration.showNotification(payload.data.title, { body: payload.data.body ? payload.data.body : '', icon: payload.data.icon ? payload.data.icon : '' }); });
