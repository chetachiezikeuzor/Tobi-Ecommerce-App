import { Product } from './product';

export class CartItem {
  id?: number;
  name?: string;
  unitPrice?: number;
  imageUrl?: string;
  imageAltUrl?: string;
  active?: boolean;
  unitsInStock?: number;
  quantity?: number;

  constructor(product?: Product) {
    this.id = product?.id;
    this.name = product?.name;
    this.unitPrice = product?.unitPrice;
    this.imageUrl = product?.imageUrl;
    this.imageAltUrl = product?.imageAltUrl;
    this.active = product?.active;
    this.unitsInStock = product?.unitsInStock;
    this.quantity = 1;
  }
}
