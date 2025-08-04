# ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrder


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] [default to undefined]
**createdAt** | **number** |  | [optional] [default to undefined]
**uniqueId** | **string** |  | [optional] [default to undefined]
**lineItems** | **Array&lt;any&gt;** |  | [optional] [default to undefined]
**lineItemsV1** | **Array&lt;any&gt;** |  | [optional] [default to undefined]
**lineItemsV2** | [**Array&lt;ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderLineItemsV2Inner&gt;**](ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderLineItemsV2Inner.md) |  | [optional] [default to undefined]
**currentLineItems** | [**Array&lt;ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderLineItemsV2Inner&gt;**](ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderLineItemsV2Inner.md) |  | [optional] [default to undefined]
**origin** | **string** |  | [optional] [default to undefined]
**state** | **string** |  | [optional] [default to undefined]
**nextAction** | **string** |  | [optional] [default to undefined]
**priority** | **number** |  | [optional] [default to undefined]
**purpose** | **string** |  | [optional] [default to undefined]
**name** | **string** |  | [optional] [default to undefined]
**level** | **string** |  | [optional] [default to undefined]
**version** | **string** |  | [optional] [default to undefined]
**ipd** | **number** |  | [optional] [default to undefined]
**ipdSource** | **string** |  | [optional] [default to undefined]
**history** | [**Array&lt;ApiAdminShipperNextGet200ResponseBigOrderHistoryInner&gt;**](ApiAdminShipperNextGet200ResponseBigOrderHistoryInner.md) |  | [optional] [default to undefined]
**tags** | **Array&lt;any&gt;** |  | [optional] [default to undefined]
**shippingServiceLevel** | **string** |  | [optional] [default to undefined]
**ownerBigscreenAccountId** | **string** |  | [optional] [default to undefined]
**creatorBigscreenAccountId** | **string** |  | [optional] [default to undefined]
**shopifyOrderId** | **string** |  | [optional] [default to undefined]
**shopifyCustomerId** | **string** |  | [optional] [default to undefined]
**shopifyOrderName** | **string** |  | [optional] [default to undefined]
**shopifyOrderSnapshot** | [**ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshot**](ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshot.md) |  | [optional] [default to undefined]
**shopifyOrderStatus** | **string** |  | [optional] [default to undefined]
**checklistResult** | [**ApiAdminShipperNextGet200ResponseBigOrderChecklistResult**](ApiAdminShipperNextGet200ResponseBigOrderChecklistResult.md) |  | [optional] [default to undefined]

## Example

```typescript
import { ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrder } from '@heavygee/arda-api-sdk';

const instance: ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrder = {
    id,
    createdAt,
    uniqueId,
    lineItems,
    lineItemsV1,
    lineItemsV2,
    currentLineItems,
    origin,
    state,
    nextAction,
    priority,
    purpose,
    name,
    level,
    version,
    ipd,
    ipdSource,
    history,
    tags,
    shippingServiceLevel,
    ownerBigscreenAccountId,
    creatorBigscreenAccountId,
    shopifyOrderId,
    shopifyCustomerId,
    shopifyOrderName,
    shopifyOrderSnapshot,
    shopifyOrderStatus,
    checklistResult,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
