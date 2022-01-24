import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { ProductListComponent } from './components/product-list/product-list.component';
import { HttpClientModule } from '@angular/common/http';
import { ProductService } from './services/product.service';
import { AboutSectionComponent } from './components/about-section/about-section.component';
import { CallToActionComponent } from './components/call-to-action/call-to-action.component';
import { CategoriesGridComponent } from './components/categories-grid/categories-grid.component';
import { CategoriesSectionComponent } from './components/categories-section/categories-section.component';
import { CheckoutSectionComponent } from './components/checkout-section/checkout-section.component';
import { FeaturedProductComponent } from './components/featured-product/featured-product.component';
import { FooterSectionComponent } from './components/footer-section/footer-section.component';
import { MainHeroComponent } from './components/main-hero/main-hero.component';
import { NavigationBarComponent } from './components/navigation-bar/navigation-bar.component';
import { ProductDetailComponent } from './components/product-detail/product-detail.component';
import { ShoppingCartDetailsComponent } from './components/shopping-cart-details/shopping-cart-details.component';

@NgModule({
  declarations: [AppComponent, ProductListComponent, AboutSectionComponent, CallToActionComponent, CategoriesGridComponent, CategoriesSectionComponent, CheckoutSectionComponent, FeaturedProductComponent, FooterSectionComponent, MainHeroComponent, NavigationBarComponent, ProductDetailComponent, ShoppingCartDetailsComponent],
  imports: [BrowserModule, HttpClientModule],
  providers: [ProductService],
  bootstrap: [AppComponent],
})
export class AppModule {}
