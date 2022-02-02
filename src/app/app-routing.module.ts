import { NgModule } from '@angular/core';
import { RouterModule, Routes, Router } from '@angular/router';
import { ProductDetailComponent } from './components/product-detail/product-detail.component';
import { CheckoutSectionComponent } from './components/checkout-section/checkout-section.component';
import { ShoppingPageComponent } from './pages/shopping-page/shopping-page.component';
import { HomePageComponent } from './pages/home-page/home-page.component';
import { BrowserModule } from '@angular/platform-browser';
import { LoginPageComponent } from './pages/login-page/login-page.component';
import { OktaAuthGuard, OktaCallbackComponent } from '@okta/okta-angular';
import { MembersPageComponent } from './pages/members-page/members-page.component';

import tobiAppConfig from './config/tobi-app-config';
import { OktaAuthModule, OKTA_CONFIG } from '@okta/okta-angular';
import { ProductService } from './services/product.service';

const oktaConfig = Object.assign(
  {
    onAuthRequired: (oktaAuth: any, injector: any) => {
      const router = injector.get(Router);
      router.navigate(['/login']);
    },
  },
  tobiAppConfig.oidc
);

const routes: Routes = [
  {
    path: 'members',
    component: MembersPageComponent,
    canActivate: [OktaAuthGuard],
  },
  { path: 'login/callback', component: OktaCallbackComponent },
  { path: 'login', component: LoginPageComponent },
  { path: 'home', component: HomePageComponent },
  { path: 'products/:id', component: ProductDetailComponent },
  { path: 'search/:keyword', component: ShoppingPageComponent },
  { path: 'categories/:id', component: ShoppingPageComponent },
  { path: 'categories', component: ShoppingPageComponent },
  { path: 'products', component: ShoppingPageComponent },
  { path: 'shop', component: ShoppingPageComponent },
  { path: 'checkout', component: CheckoutSectionComponent },
  { path: '', component: HomePageComponent },
  { path: '**', redirectTo: '/home', pathMatch: 'full' },
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, { scrollPositionRestoration: 'enabled' }),
    BrowserModule,
    OktaAuthModule,
  ],
  exports: [RouterModule],
  providers: [ProductService, { provide: OKTA_CONFIG, useValue: oktaConfig }],
})
export class AppRoutingModule {}
