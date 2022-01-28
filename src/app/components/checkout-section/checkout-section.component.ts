import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';

@Component({
  selector: 'app-checkout-section',
  templateUrl: './checkout-section.component.html',
  styleUrls: ['./checkout-section.component.css'],
})
export class CheckoutSectionComponent implements OnInit {
  checkoutFormGroup!: FormGroup;

  constructor(private formBuilder: FormBuilder) {}

  ngOnInit(): void {
    this.checkoutFormGroup = this.formBuilder.group({
      customer: this.formBuilder.group({
        firstName: [''],
        lastName: [''],
        email: [''],
      }),
      shipping: this.formBuilder.group({
        firstName: [''],
        lastName: [''],
        email: [''],
      }),
      billing: this.formBuilder.group({
        firstName: [''],
        lastName: [''],
        email: [''],
      }),
      payment: this.formBuilder.group({
        firstName: [''],
        lastName: [''],
        email: [''],
      }),
    });
  }
  onSubmit() {
    console.log(this.checkoutFormGroup.get('customer')!.value);
  }
}
