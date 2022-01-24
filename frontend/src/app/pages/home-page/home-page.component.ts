import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home-page',
  templateUrl: './home-page.component.html',
  styleUrls: ['./home-page.component.css'],
})
export class HomePageComponent implements OnInit {
  showCart = false;
  constructor() {}

  ngOnInit(): void {}

  changeDisplay = (status: boolean) => {
    this.showCart = status;
    console.log(status);
  };
}
