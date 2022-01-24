import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-navigation-bar',
  templateUrl: './navigation-bar.component.html',
  styleUrls: ['./navigation-bar.component.css'],
})
export class NavigationBarComponent implements OnInit {
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
