TODO ADD COMMENT ABOUT "DON"T EMBED TOKEN"


<!-- Photector logo, centered -->
<p align="center"><img src="./assets/Logo-Vertical-Shaded.svg" width="300"></p><br>


# JQuery Event-Requests Demo1

## Create Event Requests with JQuery and Company Access Token authentication

Here is an example of generating an Event Request through the Photector API using Company Access Token authentication. You'll need to create your own Company Access Token, and add it to the `index.html` file for this to work.

###### Important note! Embedding secret tokens in directly in your html pages is insecure. This example does so only only for the sake of making a simple example. A production-ready application should embed security tokens in a secure server-side controller. 


### 1. Create a Company Access Token

##### Login to your Administrator Account

If you do not have an _Administrator_ account login, contact Photector Support.

After logging in as an _Administrator_, go to the [Photector Developer Information](https://app.photector.com/developer) page and click __`[ + CREATE CLIENT ]`__

<img src="./assets/screenshot1 - API Clients.png" width="400"><br>

Type a name for this client, we'll use "photector_api_demo_client". Click __`[ SAVE ]`__ 

<img src="./assets/screenshot2 - create client.png" width="400"><br>

You'll see a screen like this (your id/secret will differ):

<img src="./assets/screenshot3 - demo client.png" width=400>

To immediately create the token, click __`[ + NEW COMPANY ACCESS TOKEN ]`__

You will see only part of the Company Access Token on screen. To copy its entirety click the _Copy Token to Clipboard_ icon, __` [[] `__

<img src="./assets/screenshot4 - company token.png" width="400">

If you lose the clipboard, you can return to the [Photector Developer Information](https://app.photector.com/developer) page at any time to re-copy it.






### 2. Copy the index.html file, and add your token

###### Important note! Embedding secret tokens in directly in your html pages is insecure. This example does so only only for the sake of making a simple example. A production-ready application should embed security tokens in a secure server-side controller. 

The only file you need is `index.html`. You can either download it directly from github, copy/paste it from this screen, or clone the entire git repository.

Edit `index.html` and paste your company access token. If you don't have it in your clipboard, you can get it from the [Photector Developer Information](https://app.photector.com/developer) page.

_Changing it from this:_

<img src="./assets/screenshot4a - access token before.png" width="400">

_... to something this (your token will differ):_

<img src="./assets/screenshot4b - access token after.png" width="400">





### 3. Host the index.html page on a web server.

Because this demo `index.html` page uses javascript your browser will not properly render it when simply loaded directly off your file system. It _must_ be hosted by a web server. It is outside the scope of this document to explain how to run a dedicated web server. 

However, if you're running Linux, there is included a helper here: a simple bash script using python to host a webserver on your personal computer; download and run `./testLocally.sh`






### 4. Create your first Event Request

_If you see this message you must go back and repeat steps #1 & #2, saving your token in the `index.html` page javascript source code._ <br><img src="./assets/screenshot5 - edit access token.png"><br>

<br>

Once you've pasted your token into the `index.html` page, and loaded the page, you will see the `Create an Event Request` page. As of April 2019, the only required fields are Event Description and Recipient Name. In future, even those fields may be optional.

<img src="./assets/screenshot6 - create event request.png"><br>

Fill in one or more of the fields, and click __`[ CREATE EVENT REQUEST ]`__

You will see a page like this (your request # will differ):

<img src="./assets/screenshot7 - newly created er.png"><br>

It's that simple. Your Event Request has been created, and a notification sent.

If for some reason your recipient did not receive the automatic Event Request notification on email or phone (perhaps you didn't supply it because you wish to use a proprietary internal messaging service) then you can copy/paste this hyperlink and/or its QR-code, for manually delivery to your recipient. 

<br>

_Here is an example of the SMS notification (on Google Hangouts in Android):_

<img src="./assets/screenshot8 - SMS notification.png" width="350"><br>

_Here is an example of the Email notification (on Google Mail in Android):_

<img src="./assets/screenshot9 - email notification.png" width="400"><br>


<br>
<br>
<br>

---


### 5. Source Code Overview

This section is not required to run the example, it is informational only.

Most of the `index.html` document is input field definition and style sheet formatting. Just three functions comprise the actual API handling.

The `createER()` function is a simple wrapper for `invokeCreateER()`, adding success and failure handling. On success, the event request data are parsed and a "new event request" section is populated on the page. On failure the error information is parsed into a simple text message and displayed.

The `invokeCreateER()` function is where the ER-creation REST request is sent to the Photector API using JQuery's Ajax. It gets event request creation data from the input fields. 

Finally, the `displayNewlyCreatedER()` function reads the event request creation return data, and displays some of it.



