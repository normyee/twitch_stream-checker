# Twitch Stream Checker

This application consumes the Twitch API to check if a streamer is currently live streaming and, if so, automatically opens their live stream. It uses the `user_login` parameter of the Twitch API to fetch information about the desired streamer. Also, this project was developed following best programming practices to ensure that the code is clean, organized, and easy to read. Some of the adopted best practices include:

* Dividing the code into functions and modules for ease of maintenance.
* Proper error and exception handling for a more robust user experience.
* Clear and understandable organization of variables and constants.
* Using descriptive variable and function naming to enhance code readability.

##  Features
* Checks the status of a streamer on Twitch.
* Automatically opens the streamer's live stream if it's active.
* Utilizes the user_login parameter of the Twitch API to identify the streamer.

## How it Works
The project makes a request to the Twitch API using the user_login parameter to retrieve information about the specific streamer. It then checks whether the streamer is currently live streaming. If the streamer is live, the application will automatically open the live stream in a web browser, allowing viewers to watch the live broadcast.

### Example:

![image](https://github.com/normyee/twitch_stream-checker/assets/63208510/579b27ec-4bb6-45e7-8f14-9c13c84c6628)


## Installation
To install all dependencies, on your terminal:
```
$ bundle install
```



## Documentation
For more information about the Twitch API and the available parameters, you can refer to the official Twitch documentation.

This project is a great way to check if your favorite streamers are currently live streaming on Twitch and to enjoy their broadcasts to the fullest.

Have fun watching live streams! 😊
