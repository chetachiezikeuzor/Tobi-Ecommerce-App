import { Component, OnInit } from '@angular/core';
import { Category } from 'src/app/common/category';
import { Product } from 'src/app/common/product';
import { ProductService } from 'src/app/services/product.service';
import { ProductCategoriesService } from 'src/app/services/product-categories.service';

@Component({
  selector: 'app-shopping-grid',
  templateUrl: './shopping-grid.component.html',
  styleUrls: ['./shopping-grid.component.css'],
})
export class ShoppingGridComponent implements OnInit {
  products: Product[] = [];
  categories: Category[] = [];
  constructor(
    private productService: ProductService,
    private categoryService: ProductCategoriesService
  ) {}

  ngOnInit() {
    this.listProducts();
    this.listCategories();
  }

  listProducts() {
    this.productService.getProductList().subscribe((data) => {
      this.products = data;
    });
  }

  listCategories() {
    this.categoryService.getCategoryList().subscribe((data) => {
      this.categories = data;
    });
  }
}
