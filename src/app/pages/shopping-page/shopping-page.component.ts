import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-shopping-page',
  templateUrl: './shopping-page.component.html',
  styleUrls: ['./shopping-page.component.css'],
})
export class ShoppingPageComponent implements OnInit {
  showCart = false;
  constructor() {}

  ngOnInit(): void {}

  changeDisplay = (status: boolean) => {
    this.showCart = status;
    console.log(status);
  };
}
