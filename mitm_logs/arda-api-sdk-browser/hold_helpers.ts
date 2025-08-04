/**
 * Helper functions for ARDA API hold functionality
 * These functions provide a simpler interface for using hold operations
 */

import { 
  ApiAdminShopOrderOrderIdPutRequestOneOf,
  ApiAdminShopOrderOrderIdPutRequestOneOf1,
  ApiAdminShopOrderOrderIdPutRequestOneOfActionEnum,
  ApiAdminShopOrderOrderIdPutRequestOneOf1ActionEnum,
  ApiAdminShopOrderOrderIdPutRequestOneOfShipmentHoldReasonEnum
} from './api';

/**
 * Hold reason options
 */
export const HoldReasons = {
  AddressIncorrect: 'AddressIncorrect',
  InventoryUnavailable: 'InventoryUnavailable', 
  WaitingOnReturn: 'WaitingOnReturn',
  FraudRisk: 'FraudRisk',
  WaitingOnCustomerDecision: 'WaitingOnCustomerDecision',
  Other: 'Other'
} as const;

export type HoldReason = typeof HoldReasons[keyof typeof HoldReasons];

/**
 * Create a request to add a shipping hold to an order
 * @param options - Object containing reason and optional notes
 * @returns Properly typed request object for adding a hold
 */
export function createAddHoldRequest(options: {
  reason: HoldReason;
  notes?: string;
}): ApiAdminShopOrderOrderIdPutRequestOneOf {
  return {
    action: ApiAdminShopOrderOrderIdPutRequestOneOfActionEnum.AdminAddShippingHold,
    shipmentHold: {
      reason: options.reason as ApiAdminShopOrderOrderIdPutRequestOneOfShipmentHoldReasonEnum,
      notes: options.notes || ''
    }
  };
}

/**
 * Create a request to remove a shipping hold from an order
 * @returns Properly typed request object for removing a hold
 */
export function createRemoveHoldRequest(): ApiAdminShopOrderOrderIdPutRequestOneOf1 {
  return {
    action: ApiAdminShopOrderOrderIdPutRequestOneOf1ActionEnum.AdminRemoveShippingHold
  };
}

/**
 * Helper function to validate hold reason
 * @param reason - The reason to validate
 * @returns True if valid, false otherwise
 */
export function isValidHoldReason(reason: string): reason is HoldReason {
  return Object.values(HoldReasons).includes(reason as HoldReason);
} 