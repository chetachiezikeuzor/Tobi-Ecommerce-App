import { CartItem } from './cart-item';

export class OrderItem {
  imageUrl?: string;
  unitPrice?: number;
  quanity?: number;
  productId?: number;

  constructor(cartItem: CartItem) {
    this.imageUrl = cartItem.imageUrl;
    this.quanity = cartItem.quantity;
    this.unitPrice = cartItem.unitPrice;
    this.productId = cartItem.id;
  }
}
