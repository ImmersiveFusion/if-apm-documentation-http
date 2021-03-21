# API Endpoints and Contracts

{!template/coming-soon.mdp!}

## Overview

The Immersive APM REST API is available for users who are not able to implement a direct connection to the Fusion Hub(s).  The API requires bearer token authentication is generally used directly for low-level instrumentation or as part of tracing standard implementation.

## Available Endpoints

### Consumable

From a producer/consumer or client/server perspective, a consumable is the payload that is created and published when an operation starts.

<!--#### Endpoint

`TODO: Url`
-->

#### Payload

```json
{
  "trackedUniqueConsumableId": "uuid",
  "trackedConsumerType": "string",
  "trackedConsumableType": "string",
  "trackedOn": "datetime",
  "machineName": "string",
  "instanceId": "string",
  "environment": "string",
  "error": "string",
  "shardKey": "uuid",
  "correlationId": "uuid",
  "expiresOn": "datetime",
  "machineCpuUsedPercentage": "float",
  "machineRamUsedPercentage": "float",
  "stage": "integer",
  "userId": "string",
  "isSystem": "boolean"
}
```

##### Example

```json
{
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
  "machineCpuUsedPercentage": 0,
  "machineRamUsedPercentage": 0,
  "stage": 0,
  "userId": "string",
  "isSystem": false
}
```

### Consumer

From a producer/consumer or client/server perspective, a consumer is the payload that is created and published when an operator performs part of an operation.

<!--#### Endpoint

`TODO: Url`

-->

#### Payload

```json
{
  "trackedUniqueConsumableId": "uuid",
  "trackedConsumerType": "string",
  "trackedConsumableType": "string",
  "trackedOn": "datetime",
  "machineName": "string",
  "instanceId": "string",
  "environment": "string",
  "error": "string",
  "shardKey": "uuid",
  "correlationId": "uuid",
  "expiresOn": "datetime",
  "machineCpuUsedPercentage": "float",
  "machineRamUsedPercentage": "float",
  "stage": "integer",
  "userId": "string",
}
```

##### Example

```json
{
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
  "machineCpuUsedPercentage": 0,
  "machineRamUsedPercentage": 0,
  "stage": 0
}
```

<!--
## Authentication

### OAuth 2.0 - Bearer Token

`TODO: How to obtain a token`

`TODO: Supplying the token`

-->
