import { Component, OnInit } from '@angular/core';
import {
  FormBuilder,
  FormControl,
  FormGroup,
  Validators,
} from '@angular/forms';
import { Country } from 'src/app/common/country';
import { State } from 'src/app/common/state';
import { ShopFormService } from 'src/app/services/shop-form.service';

@Component({
  selector: 'app-checkout-section',
  templateUrl: './checkout-section.component.html',
  styleUrls: ['./checkout-section.component.css'],
})
export class CheckoutSectionComponent implements OnInit {
  checkoutFormGroup!: FormGroup;
  totalPrice: number = 0;
  totalQuantity: number = 0;

  creditCardYears: number[] = [];
  creditCardMonths: number[] = [];

  countries: Country[] = [];
  states: State[] = [];

  shippingAddressStates: State[] = [];
  billingAddressStates: State[] = [];

  constructor(
    private formBuilder: FormBuilder,
    private shopFormService: ShopFormService
  ) {}

  ngOnInit(): void {
    this.checkoutFormGroup = this.formBuilder.group({
      customer: this.formBuilder.group({
        firstName: new FormControl('', [
          Validators.required,
          Validators.minLength(2),
        ]),
        lastName: new FormControl('', [
          Validators.required,
          Validators.minLength(2),
        ]),
        email: new FormControl('', [
          Validators.required,
          Validators.pattern('^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$'),
        ]),
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

    const startMonth: number = new Date().getMonth() + 1;
    console.log('start m: ' + startMonth);

    this.shopFormService.getCreditCardYears().subscribe((data) => {
      console.log("Retrieved credit card y's: " + JSON.stringify(data));
      this.creditCardYears = data;
    });

    this.shopFormService.getCreditCardMonths(startMonth).subscribe((data) => {
      console.log("Retrieved credit card m's: " + JSON.stringify(data));
      this.creditCardMonths = data;
    });

    this.shopFormService.getCountries().subscribe((data) => {
      this.countries = data;
    });
  }

  get firstName() {
    return this.checkoutFormGroup.get('customer.firstName');
  }

  get lastName() {
    return this.checkoutFormGroup.get('customer.lastName');
  }

  get email() {
    return this.checkoutFormGroup.get('customer.email');
  }

  getStates(formGroupName: string) {
    const formGroup = this.checkoutFormGroup.get(formGroupName);
    const countryCode = formGroup?.value.country.code;
    const countryName = formGroup?.value.country.name;

    this.shopFormService.getStates(countryCode).subscribe((data) => {
      if (formGroupName === 'shippingAddress') {
        this.shippingAddressStates = data;
      } else {
        this.billingAddressStates = data;
      }
      formGroup?.get('state')?.setValue(data[0]);
    });
  }

  copyShippingAddressToBillingAddress(event: Event) {
    let select = event.target as HTMLInputElement;
    if (select.checked) {
      //@ts-ignore
      this.checkoutFormGroup.controls.billingAddress
        //@ts-ignore
        .setValue(this.checkoutFormGroup.controls.shippingAddress.value);

      this.billingAddressStates = this.shippingAddressStates;
    } else {
      //@ts-ignore
      this.checkoutFormGroup.controls.billingAddress.reset();
      this.billingAddressStates = [];
    }
  }

  onSubmit() {
    console.log(this.checkoutFormGroup.get('customer')!.value);
    console.log(this.checkoutFormGroup.get('shippingAddress')!.value);
    console.log(this.checkoutFormGroup.get('billingAddress')!.value);

    if (this.checkoutFormGroup.invalid) {
      this.checkoutFormGroup.markAllAsTouched();
    }
  }
}
