import { NgModule } from '@angular/core';
import { Router, RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';
import { ProductCategoryMenuComponent } from '../components/product-category-menu/product-category-menu.component';
import { FooterComponent } from 'src/app/components/footer-section/footer-section.component';
import { NavigationBarComponent } from '../components/navigation-bar/navigation-bar.component';
import { CallToActionComponent } from '../components/call-to-action/call-to-action.component';
import { MainHeroComponent } from '../components/main-hero/main-hero.component';
import { ShoppingGridComponent } from '../components/shopping-grid/shopping-grid.component';
import { AboutSectionComponent } from '../components/about-section/about-section.component';
import { CategoriesSectionComponent } from '../components/categories-section/categories-section.component';
import { FeaturedProductComponent } from '../components/featured-product/featured-product.component';
import { CheckoutSectionComponent } from '../components/checkout-section/checkout-section.component';
import { ProductDetailComponent } from '../components/product-detail/product-detail.component';
import { SearchBoxComponent } from '../components/search-box/search-box.component';
import { LoginStatusComponent } from '../components/login-status/login-status.component';
import { OrderHistoryComponent } from '../components/order-history/order-history.component';

import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { ReactiveFormsModule } from '@angular/forms';
import { ProductService } from '../services/product.service';

@NgModule({
  declarations: [
    FooterComponent,
    SearchBoxComponent,
    NavigationBarComponent,
    CallToActionComponent,
    MainHeroComponent,
    AboutSectionComponent,
    CategoriesSectionComponent,
    FeaturedProductComponent,
    CheckoutSectionComponent,
    ProductDetailComponent,
    ShoppingGridComponent,
    LoginStatusComponent,
    ProductCategoryMenuComponent,
    OrderHistoryComponent,
  ],
  exports: [
    FooterComponent,
    SearchBoxComponent,
    NavigationBarComponent,
    CallToActionComponent,
    MainHeroComponent,
    AboutSectionComponent,
    CategoriesSectionComponent,
    FeaturedProductComponent,
    CheckoutSectionComponent,
    ProductDetailComponent,
    ShoppingGridComponent,
    LoginStatusComponent,
    ProductCategoryMenuComponent,
    ReactiveFormsModule,
    NgbModule,
    OrderHistoryComponent,
  ],
  imports: [CommonModule, RouterModule, NgbModule, ReactiveFormsModule],
  providers: [ProductService],
})
export class SharedModule {}
