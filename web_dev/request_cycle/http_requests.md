#2.What are some common HTTP status codes?
200 OK - everything is ok
404 Not Found - usually a file is missing
500 INTERNAL SERVER ERROR - this is usaually seen on a ddos attack or any other
401 UNAUTHORIZED- you will see this if restricted pages are trying to be accessed

#3.What is the difference between a GET request and a POST request? When might each be used?
A GET request is used to get information from a server usually an html, css, js, or image file.(this would be used when I click on someones profile picture on slack)
A Post request is used to send information to the server(this would be the request used when I type someting and hit enter on slack)

#4.Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
A cookie is a small peice of data a user receives from a website that is stored in the browser commonly used to rember whats is in your cart, and for tracking. I did some testing on a personal site and it seems like google analtics uses a one pixel file called "collect?v=1&_v=j......." on a GET request for my cookie.