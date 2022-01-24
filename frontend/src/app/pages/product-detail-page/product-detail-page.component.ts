import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-product-detail-page',
  templateUrl: './product-detail-page.component.html',
  styleUrls: ['./product-detail-page.component.css'],
})
export class ProductDetailPageComponent implements OnInit {
  showCart = false;
  constructor() {}

  ngOnInit(): void {}

  changeDisplay = (status: boolean) => {
    this.showCart = status;
    console.log(status);
  };
}
