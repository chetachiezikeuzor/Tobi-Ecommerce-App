import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { InventoryPass } from '../common/inventory-pass';
import { OrderItem } from '../common/order-item';
import { PaymentInfo } from '../common/payment-info';
import { Purchase } from '../common/purchase';

@Injectable({
  providedIn: 'root',
})
export class CheckoutService {
  private purchaseUrl = environment.tobiApiUrl + '/checkout/purchase';

  private paymentIntentUrl =
    environment.tobiApiUrl + '/checkout/payment-intent';

  private inventoryLogUrl = environment.tobiApiUrl + '/inventory/create';

  private purchaseItem: OrderItem = {};

  constructor(private httpClient: HttpClient) {}

  logInventory(inventoryPass: InventoryPass): Observable<any> {
    return this.httpClient.post<InventoryPass>(
      this.inventoryLogUrl,
      inventoryPass
    );
  }

  placeOrder(purchase: Purchase): Observable<any> {
    return this.httpClient.post<Purchase>(this.purchaseUrl, purchase);
  }

  createPaymentIntent(paymentInfo: PaymentInfo): Observable<any> {
    return this.httpClient.post<PaymentInfo>(
      this.paymentIntentUrl,
      paymentInfo
    );
  }
}
