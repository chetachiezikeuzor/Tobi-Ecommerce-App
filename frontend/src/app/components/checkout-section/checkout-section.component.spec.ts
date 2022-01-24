import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CheckoutSectionComponent } from './checkout-section.component';

describe('CheckoutSectionComponent', () => {
  let component: CheckoutSectionComponent;
  let fixture: ComponentFixture<CheckoutSectionComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CheckoutSectionComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CheckoutSectionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
