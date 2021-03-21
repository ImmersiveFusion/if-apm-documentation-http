# Work in progress place

how to:

------- using the client --------

1. Change my connection in the 3D client (i.e. how to switch in Fusion Hub)

2. Check the health of an app

3. check the health of real-time operations

---------- improving my experience in the 3D client ----------

1. improve 3D client performance on your machine (i..e. [this](https://immersivefusion.sharepoint.com/_layouts/OneNote.aspx?id=%2FShared%20Documents%2FIF%20Processes%20%26%20Standards&wd=target%28Fusion%20APM%20User%20Guide.one%7CCD551A61-5D79-4A47-AF94-D064785CDAD9%2FImprove%20Performance%20of%20the%20Fusion%20APM%203D%20Client%20on%20your%7C6E3E76CE-D75D-4BAC-A573-AA359CDAE495%2F%29
onenote:https://immersivefusion.sharepoint.com/Shared%20Documents/IF%20Processes%20&%20Standards/Fusion%20APM%20User%20Guide.one#Improve%20Performance%20of%20the%20Fusion%20APM%203D%20Client%20on%20your&section-id={CD551A61-5D79-4A47-AF94-D064785CDAD9}&page-id={6E3E76CE-D75D-4BAC-A573-AA359CDAE495}&end))

2. improve graphic quality of 3D client, i.e. [this](https://immersivefusion.sharepoint.com/_layouts/OneNote.aspx?id=%2FShared%20Documents%2FIF%20Processes%20%26%20Standards&wd=target%28Fusion%20APM%20User%20Guide.one%7CCD551A61-5D79-4A47-AF94-D064785CDAD9%2FImprove%20Graphic%20Quality%20of%20the%20Fusion%20APM%203D%20Client%20on%7C68442563-D32C-43BD-84E7-8DF001F837B7%2F%29
onenote:https://immersivefusion.sharepoint.com/Shared%20Documents/IF%20Processes%20&%20Standards/Fusion%20APM%20User%20Guide.one#Improve%20Graphic%20Quality%20of%20the%20Fusion%20APM%203D%20Client%20on&section-id={CD551A61-5D79-4A47-AF94-D064785CDAD9}&page-id={68442563-D32C-43BD-84E7-8DF001F837B7}&end)


## System Requirements to run the 3D-client

TODO: must have an okay GPU; ideally top-line to have max frames per second (FPS) in the client app.

### Running and configuring the client


### Using the client and moving around the world 
TODO: This above should be moved to a new page.

### What to do next?

To see how the client takes your data and processes it please view our [instrumentation](/instrumentation/) page. 

### Connecting to your Fusion Hub

### Basic Navigation 

TODO: maybe these 

1. Movement: WASD or Arrow Keys, Mouse, and scroll to move your view.

2. The Grid: The Wide open space you spawn in.
TODO: More information needed.  


3. Explore a single node: To go to a node use number keys to go to any available Node. At each Node, you will find terminals that can be interacted with and will provide information about the application connected. The nodes use a color system to tell the user the status of the application. 
* Green = Operations are working no issue.
* Red = Operations have encountered an error.
* Blue = The client knows about the operation. 

4. Go to Nexus + Explore Nexus data: To go to the nexus press console key (~) then type "port nexus" and enter. The avatar will then be teleported to the Nexus, here information will be presented in three different colors. 
* Green = Operations are working no issue.
* Red = Operations have encountered an error.
* Blue = The client knows about the operation. 

5. Advanced operation: Using the command line interface key (~) the following commands can be typed. 
* exit - exits the application
* hello world - CLI test
* port - ports to a location, make sure to add a location after port. Ex. port nexus.
* reload - reloads the current scene
* replay - requests replays of events in the past.  *note: requires a running nexus* 
* set - set values for setting in the application

TODO: These will probably change so update as needed. 
### Explore Real-Time Data and Operations
TODO: summary about using the Grid, HyperCubes.
Consumables(need work to be done) vs Consumers(do the work).

Also digs into using HyperCube Terminals and the Virtual Nexus but those feel like bigger subsections of docs. - RK




