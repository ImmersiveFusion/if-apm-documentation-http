# Python

{!template/coming-soon.mdp!}

=== "Python"


  ``` python

  # importing the requests library 
  import requests
  import json

  # get examples and documentation from https://app01-dev01-cf-east-us.azurewebsites.net/help

  # defining the api-endpoint  
  API_ENDPOINT = "https://app01-dev01-cf-east-us.azurewebsites.net/Trace/consumable"
  #API_ENDPOINT = "https://app01-dev01-cf-east-us.azurewebsites.net/Trace/consumer"

  # your API key here
  # not used at the moment
  API_KEY = "XXXXXXXXXXXXXXXXX"

  # data to be sent to api
  consumable_data = {
    "trackedUniqueConsumableId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "trackedConsumerType": "string",
    "trackedConsumableType": "string",
    "trackedOn": "2020-02-12T06:49:19.915Z",
    "machineName": "string",
    "instanceId": "string",
    "environment": "string",
    "error": "string",
    "shardKey": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "correlationId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "expiresOn": "2020-02-12T06:49:19.915Z",
    "isReplay": False,
    "machineCpuUsedPercentage": 0,
    "machineRamUsedPercentage": 0,
    "stage": 0,
    "userId": "string",
    "isSystem": False
  }
  # Consumable stages:
  #Published = 0
  #Received = 1
  #Processed = 2
  #Failed = 3
  #Lost = 4

  consumer_data = {
    "trackedUniqueConsumableId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "trackedConsumerType": "string",
    "trackedConsumableType": "string",
    "trackedOn": "2020-02-12T07:02:30.449Z",
    "machineName": "string",
    "instanceId": "string",
    "environment": "string",
    "error": "string",
    "shardKey": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "correlationId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "expiresOn": "2020-02-12T07:02:30.449Z",
    "isReplay": True,
    "machineCpuUsedPercentage": 0,
    "machineRamUsedPercentage": 0,
    "stage": 0
  }

  # Consumer stages:
  #Received = 0
  #Processed = 1
  #Failed = 2
  #Lost = 3

  print (json.dumps(consumer_data))

  headers = {'Content-type': 'application/json'}
  # sending post request and saving response as response object 
  r = requests.post(url=API_ENDPOINT, json=data, headers=headers)

  # extracting response text
  status_code = r.status_code;
  print("The status code is:%s" % status_code)

  if status_code != 200:
      response = r.text
      print("The response is:%s" % response)

  ```