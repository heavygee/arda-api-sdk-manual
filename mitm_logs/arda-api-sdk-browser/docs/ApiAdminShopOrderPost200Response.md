# ApiAdminShopOrderPost200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] [default to undefined]
**createdAt** | **number** |  | [optional] [default to undefined]
**lineItems** | **Array&lt;any&gt;** |  | [optional] [default to undefined]
**lineItemsV1** | **Array&lt;any&gt;** |  | [optional] [default to undefined]
**lineItemsV2** | [**Array&lt;ApiAdminShopOrderPost200ResponseLineItemsV2Inner&gt;**](ApiAdminShopOrderPost200ResponseLineItemsV2Inner.md) |  | [optional] [default to undefined]
**currentLineItems** | [**Array&lt;ApiAdminShopOrderPost200ResponseLineItemsV2Inner&gt;**](ApiAdminShopOrderPost200ResponseLineItemsV2Inner.md) |  | [optional] [default to undefined]
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
**history** | [**Array&lt;ApiAdminShopOrderPost200ResponseHistoryInner&gt;**](ApiAdminShopOrderPost200ResponseHistoryInner.md) |  | [optional] [default to undefined]
**tags** | **Array&lt;any&gt;** |  | [optional] [default to undefined]
**shippingServiceLevel** | **string** |  | [optional] [default to undefined]
**ownerBigscreenAccountId** | **string** |  | [optional] [default to undefined]
**creatorBigscreenAccountId** | **string** |  | [optional] [default to undefined]
**shopifyOrderId** | **string** |  | [optional] [default to undefined]
**shopifyCustomerId** | **number** |  | [optional] [default to undefined]
**shopifyOrderName** | **string** |  | [optional] [default to undefined]
**shopifyOrderSnapshot** | [**ApiAdminShopOrderPost200ResponseShopifyOrderSnapshot**](ApiAdminShopOrderPost200ResponseShopifyOrderSnapshot.md) |  | [optional] [default to undefined]
**shopifyOrderStatus** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { ApiAdminShopOrderPost200Response } from '@heavygee/arda-api-sdk';

const instance: ApiAdminShopOrderPost200Response = {
    id,
    createdAt,
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
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
