<!-- Photector logo, centered -->
<p align="center"><img src="./assets/Logo-Vertical-Shaded.svg" width="300"></p><br>


# Postman

## An importable Photector API Library for Postman

Postman is an interactive tool for REST API exploration.



<br>

### 1. Download and install Postman

Postman can be obtained from https://www.getpostman.com/


<br>

### 2. Import Photector API

From within Postman open the import tool: type Ctrl+O, or select the File/Import menu option, or click the __`[ Import ]`__ button.

Click the __`[ Import From Link ]`__ tab, and paste this URL. Then click the __`[ Import ]`__ button, or just press Enter.

https://raw.githubusercontent.com/tcompanies/photector-api/postman/PHOTECTOR%20API%20EXAMPLES.postman_collection.json



<br>


### 3. Download, import and customize your postman environment variables

##### Download the sample environment

Download the `Photector.postman_environment.json.SAMPLE` from this repository. It does not need to be in any particular location, your Downloads folder is fine.

##### Import the environment

Within Postman, click the gear icon in the upper right corner, then click the Import button.

<img src="./assets/screenshot1 - import environment.png" width="600"><br>

Select the `Photector.postman_environment.json.SAMPLE` file you downloaded. It will import, and you will see this confirmation:

<img src="./assets/screenshot2 - environment imported.png" width="600"><br>

##### Customize the environment 

Follow the instructions in [jquery_demo1](../jquery_demo1/README.md#jquery_demo1) to get create an API Client with ID/Secret and optional Company Access Token. If you already did that, you can reuse your existing keys.

Once you have obtained your Client ID/Secret, enter it into the Postman Photector environment, along with other values as needed in the API. 

<img src="./assets/screenshot3 - edit environment.png" width="600"><br>

Not all values are needed for each REST request. In particular, if you don't have four sample eventId's, that won't hurt anything other than the "retrieve multiple events" rest request. Your company will have to record a few events in order for you to get a few eventId's to test with in the API.

The access_token is an internal variable set by one of the authentication requests. However, 




<br>

### 4. Create an Event Request

To use the REST api you must first authenticate yourself, setting an `access_token` environment variable. If you use one of the authentication requests, they will set `access_token` for you. Otherwise, if you created a Company Access Token in [jquery_demo1](../jquery_demo1/README.md#jquery_demo1), you can copy/paste that value into the `access_token` environment variable and skip using one of the authentication REST requests.

Here is an example of the `createEventRequest` API. To use it, just enter values in the fields shown, and click the __`[ Send ]`__ button.

<img src="./assets/screenshot4 - create an event request.png" width="600"><br>

There are other REST requests you can explore, under the `events` folder. 



<br>

### Optional, OpenAPI support

Photector uses OpenAPI to generate some its API documentation. The link to an openapi configuration file is here: https://app.photector.com/api/openapi/api-docs.json 