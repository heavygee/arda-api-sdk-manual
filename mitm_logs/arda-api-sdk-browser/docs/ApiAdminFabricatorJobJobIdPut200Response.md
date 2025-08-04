# ApiAdminFabricatorJobJobIdPut200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] [default to undefined]
**createdAt** | **number** |  | [optional] [default to undefined]
**uniqueId** | **string** |  | [optional] [default to undefined]
**jobType** | **string** |  | [optional] [default to undefined]
**jobState** | **number** |  | [optional] [default to undefined]
**history** | [**Array&lt;ApiAdminFabricatorJobJobIdPut200ResponseHistoryInner&gt;**](ApiAdminFabricatorJobJobIdPut200ResponseHistoryInner.md) |  | [optional] [default to undefined]
**toolPathSnapshots** | [**Array&lt;ApiAdminFabricatorJobJobIdPut200ResponseToolPathSnapshotsInner&gt;**](ApiAdminFabricatorJobJobIdPut200ResponseToolPathSnapshotsInner.md) |  | [optional] [default to undefined]
**waxIdSnapshots** | **Array&lt;any&gt;** |  | [optional] [default to undefined]
**toolPathBitFieldSnapshot** | [**ApiAdminFabricatorJobsGet200ResponseItemsInnerToolPathBitFieldSnapshot**](ApiAdminFabricatorJobsGet200ResponseItemsInnerToolPathBitFieldSnapshot.md) |  | [optional] [default to undefined]
**customerIpd** | **number** |  | [optional] [default to undefined]
**preprocessorIpd** | **number** |  | [optional] [default to undefined]
**preprocessorLeftPupil** | **Array&lt;number&gt;** |  | [optional] [default to undefined]
**preprocessorRightPupil** | **Array&lt;number&gt;** |  | [optional] [default to undefined]
**preprocessorResult** | **string** |  | [optional] [default to undefined]
**ipd** | **number** |  | [optional] [default to undefined]
**ipdSource** | **string** |  | [optional] [default to undefined]
**priority** | **number** |  | [optional] [default to undefined]
**stats** | **object** |  | [optional] [default to undefined]
**version** | **string** |  | [optional] [default to undefined]
**creatorBigscreenAccountId** | **string** |  | [optional] [default to undefined]
**ownerBigscreenAccountId** | **string** |  | [optional] [default to undefined]
**scanRequestId** | **string** |  | [optional] [default to undefined]
**bigOrderId** | **string** |  | [optional] [default to undefined]
**shopifyOrderId** | **string** |  | [optional] [default to undefined]
**name** | **object** |  | [optional] [default to undefined]
**scanSnapshot** | [**ApiAdminFabricatorJobJobIdPut200ResponseScanSnapshot**](ApiAdminFabricatorJobJobIdPut200ResponseScanSnapshot.md) |  | [optional] [default to undefined]
**waxId** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { ApiAdminFabricatorJobJobIdPut200Response } from '@heavygee/arda-api-sdk';

const instance: ApiAdminFabricatorJobJobIdPut200Response = {
    id,
    createdAt,
    uniqueId,
    jobType,
    jobState,
    history,
    toolPathSnapshots,
    waxIdSnapshots,
    toolPathBitFieldSnapshot,
    customerIpd,
    preprocessorIpd,
    preprocessorLeftPupil,
    preprocessorRightPupil,
    preprocessorResult,
    ipd,
    ipdSource,
    priority,
    stats,
    version,
    creatorBigscreenAccountId,
    ownerBigscreenAccountId,
    scanRequestId,
    bigOrderId,
    shopifyOrderId,
    name,
    scanSnapshot,
    waxId,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
