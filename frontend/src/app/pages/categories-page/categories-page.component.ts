import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-categories-page',
  templateUrl: './categories-page.component.html',
  styleUrls: ['./categories-page.component.css'],
})
export class CategoriesPageComponent implements OnInit {
  showCart = false;
  constructor() {}

  ngOnInit(): void {}

  changeDisplay = (status: boolean) => {
    this.showCart = status;
    console.log(status);
  };
}
