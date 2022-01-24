import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-checkout-page',
  templateUrl: './checkout-page.component.html',
  styleUrls: ['./checkout-page.component.css'],
})
export class CheckoutPageComponent implements OnInit {
  showCart = false;
  constructor() {}

  ngOnInit(): void {}

  changeDisplay = (status: boolean) => {
    this.showCart = status;
    console.log(status);
  };
}
