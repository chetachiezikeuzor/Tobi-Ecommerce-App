import { Component, OnInit } from '@angular/core';
import { Category } from 'src/app/common/category';
import { ProductCategoriesService } from 'src/app/services/product-categories.service';

@Component({
  selector: 'app-categories-section',
  templateUrl: './categories-section.component.html',
  styleUrls: ['./categories-section.component.css'],
})
export class CategoriesSectionComponent implements OnInit {
  categories: Category[] = [];
  constructor(private categoryService: ProductCategoriesService) {}

  ngOnInit() {
    this.listCategories();
  }

  listCategories() {
    this.categoryService.getCategoryList().subscribe((data) => {
      this.categories = data;
      console.log(data);
    });
  }
}
