import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
})
export class AppComponent {
  title = 'Tobi';
  showCart = false;

  changeDisplay = (status: boolean) => {
    this.showCart = status;
    console.log(status);
  };
}
