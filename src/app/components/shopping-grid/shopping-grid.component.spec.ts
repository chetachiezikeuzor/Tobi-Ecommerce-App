import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ShoppingGridComponent } from './shopping-grid.component';

describe('ShoppingGridComponent', () => {
  let component: ShoppingGridComponent;
  let fixture: ComponentFixture<ShoppingGridComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ShoppingGridComponent],
    }).compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ShoppingGridComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
