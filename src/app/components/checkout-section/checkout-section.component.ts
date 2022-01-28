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
      shippingAddress: this.formBuilder.group({
        street: [''],
        city: [''],
        state: [''],
        country: [''],
        zipCode: [''],
      }),
      billingAddress: this.formBuilder.group({
        street: [''],
        city: [''],
        state: [''],
        country: [''],
        zipCode: [''],
      }),
      creditCard: this.formBuilder.group({
        cardType: [''],
        nameOnCard: [''],
        cardNumber: [''],
        securityCode: [''],
        expirationMonth: [''],
        expirationYear: [''],
      }),
    });
  }

  copyShippingAddressToBillingAddress(event: Event) {
    let select = event.target as HTMLInputElement;
    if (select.checked) {
      //@ts-ignore
      this.checkoutFormGroup.controls.billingAddress
        //@ts-ignore
        .setValue(this.checkoutFormGroup.controls.shippingAddress.value);
    } else {
      //@ts-ignore
      this.checkoutFormGroup.controls.billingAddress.reset();
    }
  }

  onSubmit() {
    console.log(this.checkoutFormGroup.get('customer')!.value);
    console.log(this.checkoutFormGroup.get('shippingAddress')!.value);
    console.log(this.checkoutFormGroup.get('billingAddress')!.value);
  }
}
