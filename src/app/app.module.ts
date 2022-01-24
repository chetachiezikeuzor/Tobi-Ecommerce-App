import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { BrowserModule } from '@angular/platform-browser';

import { SharedModule } from './shared-module/shared.module';

import { AppComponent } from './app.component';
import { AppRoutingModule } from './app-routing.module';
import { ShoppingPageComponent } from './pages/shopping-page/shopping-page.component';
import { HomePageComponent } from './pages/home-page/home-page.component';
import { ProductDetailPageComponent } from './pages/product-detail-page/product-detail-page.component';
import { CheckoutPageComponent } from './pages/checkout-page/checkout-page.component';
import { ShoppingCartDetailsComponent } from './components/shopping-cart-details/shopping-cart-details.component';
import { HttpClientModule } from '@angular/common/http';
import { ProductService } from './services/product.service';
import { ProductCategoryMenuComponent } from './components/product-category-menu/product-category-menu.component';

@NgModule({
  declarations: [
    AppComponent,
    ShoppingPageComponent,
    HomePageComponent,
    ProductDetailPageComponent,
    CheckoutPageComponent,
    ShoppingCartDetailsComponent,
    ProductCategoryMenuComponent,
  ],
  imports: [SharedModule, BrowserModule, AppRoutingModule, HttpClientModule],
  providers: [ProductService],
  bootstrap: [AppComponent],
})
export class AppModule {}
