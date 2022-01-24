import { Component, OnInit } from '@angular/core';
import { ProductCategory } from 'src/app/common/product-category';
import { ProductService } from 'src/app/services/product.service';

@Component({
  selector: 'app-categories-section',
  templateUrl: './categories-section.component.html',
  styleUrls: ['./categories-section.component.css'],
})
export class CategoriesSectionComponent implements OnInit {
  categories: ProductCategory[] = [];
  constructor(private productService: ProductService) {}

  ngOnInit() {
    this.listCategories();
  }

  listCategories() {
    this.productService.getProductCategories().subscribe((data) => {
      this.categories = data;
      console.log(data);
    });
  }
}
