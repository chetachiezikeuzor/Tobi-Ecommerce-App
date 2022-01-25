import { Component, OnInit } from '@angular/core';
import { Product } from 'src/app/common/product';
import { ProductService } from 'src/app/services/product.service';
import { ActivatedRoute } from '@angular/router';
import { ProductCategory } from 'src/app/common/product-category';

@Component({
  selector: 'app-shopping-grid',
  templateUrl: './shopping-grid.component.html',
  styleUrls: ['./shopping-grid.component.css'],
})
export class ShoppingGridComponent implements OnInit {
  products: Product[] = [];
  currentCategoryId?: number;
  currentCategory?: ProductCategory[] = [];

  constructor(
    private productService: ProductService,
    private route: ActivatedRoute
  ) {}

  ngOnInit() {
    this.route.paramMap.subscribe(() => {
      this.listProducts();
    });
  }

  doSomething(input: string) {
    console.log(input);
  }

  listProducts() {
    const hasCategoryId: boolean = this.route.snapshot.paramMap.has('id');
    if (hasCategoryId) {
      //@ts-ignore
      this.currentCategoryId = +this.route.snapshot.paramMap.get('id');
    } else {
      this.currentCategoryId = 1;
    }

    this.productService
      .getProductList(this.currentCategoryId)
      .subscribe((data) => {
        this.products = data;
        console.log(data);
      });
  }
}
