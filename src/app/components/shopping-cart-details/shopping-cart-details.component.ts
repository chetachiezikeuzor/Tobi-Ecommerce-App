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

  constructor(private cartService: CartService) {}

  cartDisplayStatus(status: boolean) {
    this.showCart = status;
    this.showCartChange.emit(status);
  }

  ngOnInit(): void {
    this.cartItems = this.cartService.cartItems;
    this.cartService.totalPrice.subscribe((data) => (this.totalPrice = data));
    console.log(this.cartService.totalPrice);
    console.log(this.cartService.cartItems);
  }
}
