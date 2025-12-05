Feature: Common reusable steps for Inventory API

Background:
    * url baseUrl
    * configure headers = { Accept: 'application/json', Content-Type: 'application/json' }
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true