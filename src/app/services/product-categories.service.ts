import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { map } from 'rxjs';
import { Category } from '../common/category';

@Injectable({
  providedIn: 'root',
})
export class ProductCategoriesService {
  private baseUrl = 'http://localhost:8008/api/product-categories';

  constructor(private httpClient: HttpClient) {}

  getCategoryList(): Observable<Category[]> {
    return this.httpClient
      .get<GetResponse>(this.baseUrl)
      .pipe(map((response) => response._embedded.productCategories));
  }
}
interface GetResponse {
  _embedded: {
    productCategories: Category[];
  };
}
