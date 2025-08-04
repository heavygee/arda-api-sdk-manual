# ApiAdminFabricatorJobsGet200ResponseItemsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] [default to undefined]
**createdAt** | **number** |  | [optional] [default to undefined]
**uniqueId** | **string** |  | [optional] [default to undefined]
**jobType** | **string** |  | [optional] [default to undefined]
**jobState** | **number** |  | [optional] [default to undefined]
**history** | [**Array&lt;ApiAdminFabricatorJobsGet200ResponseItemsInnerHistoryInner&gt;**](ApiAdminFabricatorJobsGet200ResponseItemsInnerHistoryInner.md) |  | [optional] [default to undefined]
**toolPathSnapshots** | [**Array&lt;ApiAdminFabricatorJobsGet200ResponseItemsInnerToolPathSnapshotsInner&gt;**](ApiAdminFabricatorJobsGet200ResponseItemsInnerToolPathSnapshotsInner.md) |  | [optional] [default to undefined]
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
**name** | **string** |  | [optional] [default to undefined]
**scanSnapshot** | [**ApiAdminFabricatorJobsGet200ResponseItemsInnerScanSnapshot**](ApiAdminFabricatorJobsGet200ResponseItemsInnerScanSnapshot.md) |  | [optional] [default to undefined]
**nfcTagId** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { ApiAdminFabricatorJobsGet200ResponseItemsInner } from '@heavygee/arda-api-sdk';

const instance: ApiAdminFabricatorJobsGet200ResponseItemsInner = {
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
    nfcTagId,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
