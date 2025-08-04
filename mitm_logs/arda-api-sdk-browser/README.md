## @heavygee/arda-api-sdk@1.0.1

This generator creates TypeScript/JavaScript client that utilizes [axios](https://github.com/axios/axios). The generated Node module can be used in the following environments:

Environment
* Node.js
* Webpack
* Browserify

Language level
* ES5 - you must have a Promises/A+ library installed
* ES6

Module system
* CommonJS
* ES6 module system

It can be used in both TypeScript and JavaScript. In TypeScript, the definition will be automatically resolved via `package.json`. ([Reference](https://www.typescriptlang.org/docs/handbook/declaration-files/consumption.html))

### Building

To build and compile the typescript sources to javascript use:
```
npm install
npm run build
```

### Publishing

First build the package then run `npm publish`

### Consuming

navigate to the folder of your consuming project and run one of the following commands.

_published:_

```
npm install @heavygee/arda-api-sdk@1.0.1 --save
```

_unPublished (not recommended):_

```
npm install PATH_TO_GENERATED_PACKAGE --save
```

### Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**accountAccountIdGet**](docs/DefaultApi.md#accountaccountidget) | **GET** /account/{accountId} | GET account by accountId
*DefaultApi* | [**apiAdminAccountAccountIdGet**](docs/DefaultApi.md#apiadminaccountaccountidget) | **GET** /api/admin/account/{accountId} | GET account by accountId
*DefaultApi* | [**apiAdminAccountAccountIdStatsGet**](docs/DefaultApi.md#apiadminaccountaccountidstatsget) | **GET** /api/admin/account/{accountId}/stats | GET stats by accountId
*DefaultApi* | [**apiAdminAuthSchemasGet**](docs/DefaultApi.md#apiadminauthschemasget) | **GET** /api/admin/auth/schemas | GET schemas
*DefaultApi* | [**apiAdminFabricatorJobJobIdGet**](docs/DefaultApi.md#apiadminfabricatorjobjobidget) | **GET** /api/admin/fabricator/job/{jobId} | GET job by jobId
*DefaultApi* | [**apiAdminFabricatorJobJobIdPut**](docs/DefaultApi.md#apiadminfabricatorjobjobidput) | **PUT** /api/admin/fabricator/job/{jobId} | PUT job by jobId
*DefaultApi* | [**apiAdminFabricatorJobsGet**](docs/DefaultApi.md#apiadminfabricatorjobsget) | **GET** /api/admin/fabricator/jobs | GET jobs
*DefaultApi* | [**apiAdminFabricatorProductsGet**](docs/DefaultApi.md#apiadminfabricatorproductsget) | **GET** /api/admin/fabricator/products | GET products
*DefaultApi* | [**apiAdminFabricatorSchemas2Get**](docs/DefaultApi.md#apiadminfabricatorschemas2get) | **GET** /api/admin/fabricator/schemas2 | GET schemas2
*DefaultApi* | [**apiAdminInventoryItemItemIdGet**](docs/DefaultApi.md#apiadmininventoryitemitemidget) | **GET** /api/admin/inventory/item/{itemId} | GET item by itemId
*DefaultApi* | [**apiAdminInventoryItemsGet**](docs/DefaultApi.md#apiadmininventoryitemsget) | **GET** /api/admin/inventory/items | GET items
*DefaultApi* | [**apiAdminInventoryStatsGet**](docs/DefaultApi.md#apiadmininventorystatsget) | **GET** /api/admin/inventory/stats | GET stats
*DefaultApi* | [**apiAdminShipperNextGet**](docs/DefaultApi.md#apiadminshippernextget) | **GET** /api/admin/shipper/next | GET next
*DefaultApi* | [**apiAdminShipperShipmentShipmentIdGet**](docs/DefaultApi.md#apiadminshippershipmentshipmentidget) | **GET** /api/admin/shipper/shipment/{shipmentId} | GET shipment by shipmentId
*DefaultApi* | [**apiAdminShipperShipmentsGet**](docs/DefaultApi.md#apiadminshippershipmentsget) | **GET** /api/admin/shipper/shipments | GET shipments
*DefaultApi* | [**apiAdminShipperStatsGet**](docs/DefaultApi.md#apiadminshipperstatsget) | **GET** /api/admin/shipper/stats | GET stats
*DefaultApi* | [**apiAdminShopOrderOrderIdChecklistGet**](docs/DefaultApi.md#apiadminshoporderorderidchecklistget) | **GET** /api/admin/shop/order/{orderId}/checklist | GET checklist by orderId
*DefaultApi* | [**apiAdminShopOrderOrderIdGet**](docs/DefaultApi.md#apiadminshoporderorderidget) | **GET** /api/admin/shop/order/{orderId} | GET order by orderId
*DefaultApi* | [**apiAdminShopOrderOrderIdInventoryGet**](docs/DefaultApi.md#apiadminshoporderorderidinventoryget) | **GET** /api/admin/shop/order/{orderId}/inventory | GET inventory by orderId
*DefaultApi* | [**apiAdminShopOrderOrderIdPut**](docs/DefaultApi.md#apiadminshoporderorderidput) | **PUT** /api/admin/shop/order/{orderId} | PUT order by orderId
*DefaultApi* | [**apiAdminShopOrderOrderIdScanRequestsGet**](docs/DefaultApi.md#apiadminshoporderorderidscanrequestsget) | **GET** /api/admin/shop/order/{orderId}/scan_requests | GET scan_requests by orderId
*DefaultApi* | [**apiAdminShopOrderOrderIdSyncLineItemsGet**](docs/DefaultApi.md#apiadminshoporderorderidsynclineitemsget) | **GET** /api/admin/shop/order/{orderId}/sync_line_items | GET sync_line_items by orderId
*DefaultApi* | [**apiAdminShopOrderPost**](docs/DefaultApi.md#apiadminshoporderpost) | **POST** /api/admin/shop/order | POST order
*DefaultApi* | [**apiAdminShopOrdersGet**](docs/DefaultApi.md#apiadminshopordersget) | **GET** /api/admin/shop/orders | GET orders
*DefaultApi* | [**apiAdminShopOrdersReport2Get**](docs/DefaultApi.md#apiadminshopordersreport2get) | **GET** /api/admin/shop/orders/report2 | GET report2
*DefaultApi* | [**apiAdminShopShopifyOrderShopifyOrderIdGet**](docs/DefaultApi.md#apiadminshopshopifyordershopifyorderidget) | **GET** /api/admin/shop/shopify_order/{shopifyOrderId} | GET shopify_order by shopifyOrderId
*DefaultApi* | [**fabricatorGet**](docs/DefaultApi.md#fabricatorget) | **GET** /fabricator | GET fabricator
*DefaultApi* | [**fabricatorJobJobIdGet**](docs/DefaultApi.md#fabricatorjobjobidget) | **GET** /fabricator/job/{jobId} | GET job by jobId
*DefaultApi* | [**inventoryGet**](docs/DefaultApi.md#inventoryget) | **GET** /inventory | GET inventory
*DefaultApi* | [**inventoryItemItemIdGet**](docs/DefaultApi.md#inventoryitemitemidget) | **GET** /inventory/item/{itemId} | GET item by itemId
*DefaultApi* | [**shipperGet**](docs/DefaultApi.md#shipperget) | **GET** /shipper | GET shipper
*DefaultApi* | [**shipperQueueGet**](docs/DefaultApi.md#shipperqueueget) | **GET** /shipper/queue | GET queue
*DefaultApi* | [**shopOrderOrderIdGet**](docs/DefaultApi.md#shoporderorderidget) | **GET** /shop/order/{orderId} | GET order by orderId
*DefaultApi* | [**shopOrdersGet**](docs/DefaultApi.md#shopordersget) | **GET** /shop/orders | GET orders


### Documentation For Models

 - [ApiAdminAccountAccountIdGet200Response](docs/ApiAdminAccountAccountIdGet200Response.md)
 - [ApiAdminAccountAccountIdStatsGet200Response](docs/ApiAdminAccountAccountIdStatsGet200Response.md)
 - [ApiAdminFabricatorJobJobIdPut200Response](docs/ApiAdminFabricatorJobJobIdPut200Response.md)
 - [ApiAdminFabricatorJobJobIdPut200ResponseHistoryInner](docs/ApiAdminFabricatorJobJobIdPut200ResponseHistoryInner.md)
 - [ApiAdminFabricatorJobJobIdPut200ResponseHistoryInnerJobSnapshot](docs/ApiAdminFabricatorJobJobIdPut200ResponseHistoryInnerJobSnapshot.md)
 - [ApiAdminFabricatorJobJobIdPut200ResponseScanSnapshot](docs/ApiAdminFabricatorJobJobIdPut200ResponseScanSnapshot.md)
 - [ApiAdminFabricatorJobJobIdPut200ResponseToolPathSnapshotsInner](docs/ApiAdminFabricatorJobJobIdPut200ResponseToolPathSnapshotsInner.md)
 - [ApiAdminFabricatorJobJobIdPutRequest](docs/ApiAdminFabricatorJobJobIdPutRequest.md)
 - [ApiAdminFabricatorJobJobIdPutRequestMetaData](docs/ApiAdminFabricatorJobJobIdPutRequestMetaData.md)
 - [ApiAdminFabricatorJobsGet200Response](docs/ApiAdminFabricatorJobsGet200Response.md)
 - [ApiAdminFabricatorJobsGet200ResponseItemsInner](docs/ApiAdminFabricatorJobsGet200ResponseItemsInner.md)
 - [ApiAdminFabricatorJobsGet200ResponseItemsInnerHistoryInner](docs/ApiAdminFabricatorJobsGet200ResponseItemsInnerHistoryInner.md)
 - [ApiAdminFabricatorJobsGet200ResponseItemsInnerHistoryInnerJobSnapshot](docs/ApiAdminFabricatorJobsGet200ResponseItemsInnerHistoryInnerJobSnapshot.md)
 - [ApiAdminFabricatorJobsGet200ResponseItemsInnerScanSnapshot](docs/ApiAdminFabricatorJobsGet200ResponseItemsInnerScanSnapshot.md)
 - [ApiAdminFabricatorJobsGet200ResponseItemsInnerToolPathBitFieldSnapshot](docs/ApiAdminFabricatorJobsGet200ResponseItemsInnerToolPathBitFieldSnapshot.md)
 - [ApiAdminFabricatorJobsGet200ResponseItemsInnerToolPathSnapshotsInner](docs/ApiAdminFabricatorJobsGet200ResponseItemsInnerToolPathSnapshotsInner.md)
 - [ApiAdminInventoryItemItemIdGet200Response](docs/ApiAdminInventoryItemItemIdGet200Response.md)
 - [ApiAdminInventoryItemItemIdGet200ResponseHistoryInner](docs/ApiAdminInventoryItemItemIdGet200ResponseHistoryInner.md)
 - [ApiAdminInventoryItemItemIdGet200ResponsePickingHint](docs/ApiAdminInventoryItemItemIdGet200ResponsePickingHint.md)
 - [ApiAdminShipperNextGet200Response](docs/ApiAdminShipperNextGet200Response.md)
 - [ApiAdminShipperNextGet200ResponseBigOrder](docs/ApiAdminShipperNextGet200ResponseBigOrder.md)
 - [ApiAdminShipperNextGet200ResponseBigOrderChecklistResult](docs/ApiAdminShipperNextGet200ResponseBigOrderChecklistResult.md)
 - [ApiAdminShipperNextGet200ResponseBigOrderCurrentLineItemsInner](docs/ApiAdminShipperNextGet200ResponseBigOrderCurrentLineItemsInner.md)
 - [ApiAdminShipperNextGet200ResponseBigOrderHistoryInner](docs/ApiAdminShipperNextGet200ResponseBigOrderHistoryInner.md)
 - [ApiAdminShipperNextGet200ResponseBigOrderLineItemsV2Inner](docs/ApiAdminShipperNextGet200ResponseBigOrderLineItemsV2Inner.md)
 - [ApiAdminShipperNextGet200ResponseBigOrderLineItemsV2InnerShopifyOrderLineItemSnapshot](docs/ApiAdminShipperNextGet200ResponseBigOrderLineItemsV2InnerShopifyOrderLineItemSnapshot.md)
 - [ApiAdminShipperNextGet200ResponseBigOrderLineItemsV2InnerShopifyOrderLineItemSnapshotDutiesInner](docs/ApiAdminShipperNextGet200ResponseBigOrderLineItemsV2InnerShopifyOrderLineItemSnapshotDutiesInner.md)
 - [ApiAdminShipperNextGet200ResponseBigOrderLineItemsV2InnerShopifyOrderLineItemSnapshotDutiesInnerPriceSet](docs/ApiAdminShipperNextGet200ResponseBigOrderLineItemsV2InnerShopifyOrderLineItemSnapshotDutiesInnerPriceSet.md)
 - [ApiAdminShipperNextGet200ResponseBigOrderLineItemsV2InnerShopifyOrderLineItemSnapshotDutiesInnerPriceSetShopMoney](docs/ApiAdminShipperNextGet200ResponseBigOrderLineItemsV2InnerShopifyOrderLineItemSnapshotDutiesInnerPriceSetShopMoney.md)
 - [ApiAdminShipperNextGet200ResponseBigOrderLineItemsV2InnerShopifyOrderLineItemSnapshotDutiesInnerTaxLinesInner](docs/ApiAdminShipperNextGet200ResponseBigOrderLineItemsV2InnerShopifyOrderLineItemSnapshotDutiesInnerTaxLinesInner.md)
 - [ApiAdminShipperNextGet200ResponseBigOrderShopifyOrderSnapshot](docs/ApiAdminShipperNextGet200ResponseBigOrderShopifyOrderSnapshot.md)
 - [ApiAdminShipperNextGet200ResponseBigOrderShopifyOrderSnapshotBillingAddress](docs/ApiAdminShipperNextGet200ResponseBigOrderShopifyOrderSnapshotBillingAddress.md)
 - [ApiAdminShipperNextGet200ResponseBigOrderShopifyOrderSnapshotClientDetails](docs/ApiAdminShipperNextGet200ResponseBigOrderShopifyOrderSnapshotClientDetails.md)
 - [ApiAdminShipperNextGet200ResponseBigOrderShopifyOrderSnapshotCustomer](docs/ApiAdminShipperNextGet200ResponseBigOrderShopifyOrderSnapshotCustomer.md)
 - [ApiAdminShipperNextGet200ResponseBigOrderShopifyOrderSnapshotCustomerDefaultAddress](docs/ApiAdminShipperNextGet200ResponseBigOrderShopifyOrderSnapshotCustomerDefaultAddress.md)
 - [ApiAdminShipperNextGet200ResponseBigOrderShopifyOrderSnapshotCustomerEmailMarketingConsent](docs/ApiAdminShipperNextGet200ResponseBigOrderShopifyOrderSnapshotCustomerEmailMarketingConsent.md)
 - [ApiAdminShipperNextGet200ResponseBigOrderShopifyOrderSnapshotCustomerSmsMarketingConsent](docs/ApiAdminShipperNextGet200ResponseBigOrderShopifyOrderSnapshotCustomerSmsMarketingConsent.md)
 - [ApiAdminShipperNextGet200ResponseBigOrderShopifyOrderSnapshotShippingLinesInner](docs/ApiAdminShipperNextGet200ResponseBigOrderShopifyOrderSnapshotShippingLinesInner.md)
 - [ApiAdminShipperNextGet200ResponseInventorySlotsInner](docs/ApiAdminShipperNextGet200ResponseInventorySlotsInner.md)
 - [ApiAdminShipperNextGet200ResponseInventorySlotsInnerPickingHint](docs/ApiAdminShipperNextGet200ResponseInventorySlotsInnerPickingHint.md)
 - [ApiAdminShipperShipmentShipmentIdGet200Response](docs/ApiAdminShipperShipmentShipmentIdGet200Response.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrder](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrder.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderLineItemsV2Inner](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderLineItemsV2Inner.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderLineItemsV2InnerShopifyOrderLineItemSnapshot](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderLineItemsV2InnerShopifyOrderLineItemSnapshot.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshot](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshot.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshotBillingAddress](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshotBillingAddress.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshotCustomer](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshotCustomer.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshotCustomerDefaultAddress](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshotCustomerDefaultAddress.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshotRefundsInner](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshotRefundsInner.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshotRefundsInnerRefundLineItemsInner](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshotRefundsInnerRefundLineItemsInner.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshotRefundsInnerRefundLineItemsInnerLineItem](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshotRefundsInnerRefundLineItemsInnerLineItem.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshotShippingAddress](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigOrderShopifyOrderSnapshotShippingAddress.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigShipment](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigShipment.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigShipmentCurrentShippingLabel](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigShipmentCurrentShippingLabel.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigShipmentCurrentShippingLabelBilling](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigShipmentCurrentShippingLabelBilling.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigShipmentCurrentShippingLabelRate](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigShipmentCurrentShippingLabelRate.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigShipmentHistoryInner](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigShipmentHistoryInner.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigShipmentInventorySlotsInner](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigShipmentInventorySlotsInner.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigShipmentInventorySlotsInnerPickingHint](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigShipmentInventorySlotsInnerPickingHint.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseBigShipmentInventorySlotsInnerPickingHintInventoryItem](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseBigShipmentInventorySlotsInnerPickingHintInventoryItem.md)
 - [ApiAdminShipperShipmentShipmentIdGet200ResponseInventoryItemsInner](docs/ApiAdminShipperShipmentShipmentIdGet200ResponseInventoryItemsInner.md)
 - [ApiAdminShopOrderOrderIdChecklistGet200Response](docs/ApiAdminShopOrderOrderIdChecklistGet200Response.md)
 - [ApiAdminShopOrderOrderIdChecklistGet422Response](docs/ApiAdminShopOrderOrderIdChecklistGet422Response.md)
 - [ApiAdminShopOrderOrderIdInventoryGet200ResponseInner](docs/ApiAdminShopOrderOrderIdInventoryGet200ResponseInner.md)
 - [ApiAdminShopOrderOrderIdInventoryGet200ResponseInnerPickingHint](docs/ApiAdminShopOrderOrderIdInventoryGet200ResponseInnerPickingHint.md)
 - [ApiAdminShopOrderOrderIdPutRequest](docs/ApiAdminShopOrderOrderIdPutRequest.md)
 - [ApiAdminShopOrderOrderIdPutRequestOneOf](docs/ApiAdminShopOrderOrderIdPutRequestOneOf.md)
 - [ApiAdminShopOrderOrderIdPutRequestOneOf1](docs/ApiAdminShopOrderOrderIdPutRequestOneOf1.md)
 - [ApiAdminShopOrderOrderIdPutRequestOneOf2](docs/ApiAdminShopOrderOrderIdPutRequestOneOf2.md)
 - [ApiAdminShopOrderOrderIdPutRequestOneOfShipmentHold](docs/ApiAdminShopOrderOrderIdPutRequestOneOfShipmentHold.md)
 - [ApiAdminShopOrderPost200Response](docs/ApiAdminShopOrderPost200Response.md)
 - [ApiAdminShopOrderPost200ResponseHistoryInner](docs/ApiAdminShopOrderPost200ResponseHistoryInner.md)
 - [ApiAdminShopOrderPost200ResponseLineItemsV2Inner](docs/ApiAdminShopOrderPost200ResponseLineItemsV2Inner.md)
 - [ApiAdminShopOrderPost200ResponseLineItemsV2InnerShopifyOrderLineItemSnapshot](docs/ApiAdminShopOrderPost200ResponseLineItemsV2InnerShopifyOrderLineItemSnapshot.md)
 - [ApiAdminShopOrderPost200ResponseLineItemsV2InnerShopifyOrderLineItemSnapshotPropertiesInner](docs/ApiAdminShopOrderPost200ResponseLineItemsV2InnerShopifyOrderLineItemSnapshotPropertiesInner.md)
 - [ApiAdminShopOrderPost200ResponseLineItemsV2InnerShopifyOrderLineItemSnapshotTaxLinesInner](docs/ApiAdminShopOrderPost200ResponseLineItemsV2InnerShopifyOrderLineItemSnapshotTaxLinesInner.md)
 - [ApiAdminShopOrderPost200ResponseShopifyOrderSnapshot](docs/ApiAdminShopOrderPost200ResponseShopifyOrderSnapshot.md)
 - [ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotBillingAddress](docs/ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotBillingAddress.md)
 - [ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotClientDetails](docs/ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotClientDetails.md)
 - [ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotCustomer](docs/ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotCustomer.md)
 - [ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotCustomerDefaultAddress](docs/ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotCustomerDefaultAddress.md)
 - [ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotFulfillmentsInner](docs/ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotFulfillmentsInner.md)
 - [ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotFulfillmentsInnerLineItemsInner](docs/ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotFulfillmentsInnerLineItemsInner.md)
 - [ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotShippingAddress](docs/ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotShippingAddress.md)
 - [ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotShippingLinesInner](docs/ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotShippingLinesInner.md)
 - [ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotTaxLinesInner](docs/ApiAdminShopOrderPost200ResponseShopifyOrderSnapshotTaxLinesInner.md)
 - [ApiAdminShopOrderPostRequest](docs/ApiAdminShopOrderPostRequest.md)


<a id="documentation-for-authorization"></a>
## Documentation For Authorization

Endpoints do not require authorization.

