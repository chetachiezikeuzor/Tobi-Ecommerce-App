import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { Subject } from 'rxjs';
import { CartItem } from 'src/app/common/cart-item';
import { CartService } from 'src/app/services/cart.service';

@Component({
  selector: 'app-shopping-cart-details',
  templateUrl: './shopping-cart-details.component.html',
  styleUrls: ['./shopping-cart-details.component.css'],
})
export class ShoppingCartDetailsComponent implements OnInit {
  @Input()
  showCart?: boolean;
  @Output() showCartChange: EventEmitter<boolean> = new EventEmitter();

  cartItems?: CartItem[] = [];
  totalPrice?: number;
  totelQuantity?: number;

  constructor(private cartService: CartService) {}

  cartDisplayStatus(status: boolean) {
    this.showCart = status;
    this.showCartChange.emit(status);
  }

  ngOnInit(): void {
    this.listCartDetails();
  }

  listCartDetails() {
    this.cartItems = this.cartService.cartItems;
    this.cartService.totalPrice.subscribe((data) => (this.totalPrice = data));
    this.cartService.totalQuantity.subscribe(
      (data) => (this.totelQuantity = data)
    );
    this.cartService.computeCartTotals();
  }

  increaseValue(theCartItem: CartItem) {
    let foundItem = this.cartService.cartItems.find(
      (tempCartItem) => tempCartItem.id === theCartItem.id
    );
    //@ts-ignore
    foundItem?.quantity = foundItem?.quantity! + 1;
    this.cartService.computeCartTotals();
  }

  decreaseValue(theCartItem: CartItem) {
    let foundItem = this.cartService.cartItems.find(
      (tempCartItem) => tempCartItem.id === theCartItem.id
    );
    //@ts-ignore
    if (foundItem?.quantity > 1) {
      //@ts-ignore
      foundItem?.quantity = foundItem?.quantity! - 1;
    }
    this.cartService.computeCartTotals();
  }
}
