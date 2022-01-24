import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-shopping-cart-details',
  templateUrl: './shopping-cart-details.component.html',
  styleUrls: ['./shopping-cart-details.component.css'],
})
export class ShoppingCartDetailsComponent implements OnInit {
  @Input()
  showCart?: boolean;
  @Output() showCartChange: EventEmitter<boolean> = new EventEmitter();

  constructor() {}

  cartDisplayStatus(status: boolean) {
    this.showCart = status;
    this.showCartChange.emit(status);
    console.log('open');
    console.log(this.showCart);
  }

  ngOnInit(): void {}
}
