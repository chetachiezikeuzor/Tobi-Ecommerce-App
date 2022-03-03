import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { CartItem } from 'src/app/common/cart-item';
import { Product } from 'src/app/common/product';
import { CartService } from 'src/app/services/cart.service';
import { ProductService } from 'src/app/services/product.service';

tempProduct: Product

@Component({
  selector: 'app-product-detail',
  templateUrl: './product-detail.component.html',
  styleUrls: ['./product-detail.component.css'],
})
export class ProductDetailComponent implements OnInit {
  product: Product = new Product();
  totalPrice: number = 0.0;
  totalQuantity: number = 0;
  constructor(
    private productService: ProductService,
    private route: ActivatedRoute,
    private cartService: CartService
  ) {}

  ngOnInit(): void {
    this.route.paramMap.subscribe(() => {
      this.handleProductDetails();
    });
  }

  isEqualZero (theNumber: number | undefined) {

    if (theNumber == 0) {
          return true

    }
    else{
      return false
    }

  }

  handleProductDetails() {
    //@ts-ignore
    const theProductId: number = +this.route.snapshot.paramMap.get('id');
    this.productService.getProductById(theProductId).subscribe((data) => {
      this.product = data;
      console.log(data);
    });
  }

  addToCart() {
    console.log(
      `Adding to cart: ${this.product.name}: $${this.product.unitPrice}`
    );

    const theCartItem = new CartItem(this.product);

    this.cartService.addToCart(theCartItem);
  }
}
