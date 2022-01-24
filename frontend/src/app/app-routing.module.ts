import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ProductDetailComponent } from './components/product-detail/product-detail.component';
import { CheckoutSectionComponent } from './components/checkout-section/checkout-section.component';
import { ShoppingPageComponent } from './pages/shopping-page/shopping-page.component';
import { HomePageComponent } from './pages/home-page/home-page.component';
import { BrowserModule } from '@angular/platform-browser';

const routes: Routes = [
  { path: 'home', component: HomePageComponent },
  { path: 'categories/:id', component: ShoppingPageComponent },
  { path: 'categories', component: ShoppingPageComponent },
  { path: 'shop', component: ShoppingPageComponent },
  { path: 'checkout', component: CheckoutSectionComponent },
  { path: 'products', component: ProductDetailComponent },
  { path: '', component: HomePageComponent },
  { path: '**', redirectTo: '/home', pathMatch: 'full' },
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, { scrollPositionRestoration: 'enabled' }),
    BrowserModule,
  ],
  exports: [RouterModule],
})
export class AppRoutingModule {}
