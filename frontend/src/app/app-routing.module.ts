import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ProductDetailComponent } from './components/product-detail/product-detail.component';
import { CheckoutSectionComponent } from './components/checkout-section/checkout-section.component';
import { ShoppingPageComponent } from './pages/shopping-page/shopping-page.component';
import { HomePageComponent } from './pages/home-page/home-page.component';

const routes: Routes = [
  { path: '', component: HomePageComponent },
  { path: 'shop', component: ShoppingPageComponent },
  { path: 'categories/{id}', component: ShoppingPageComponent },
  { path: 'checkout', component: CheckoutSectionComponent },
  { path: 'product-detail', component: ProductDetailComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
