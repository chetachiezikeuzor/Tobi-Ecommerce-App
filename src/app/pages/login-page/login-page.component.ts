import { Component, OnInit } from '@angular/core';
import { OktaAuthService } from '@okta/okta-angular';
import * as OktaSignIn from '@okta/okta-signin-widget';
import tobiAppConfig from '../../config/tobi-app-config';

@Component({
  selector: 'app-login-page',
  templateUrl: './login-page.component.html',
  styleUrls: ['./login-page.component.css'],
})
export class LoginPageComponent implements OnInit {
  oktaSignin: any;

  constructor(private oktaAuthService: OktaAuthService) {
    this.oktaSignin = new OktaSignIn({
      logo: 'assets/images/logo.png',
      baseUrl: tobiAppConfig.oidc.issuer.split('/oauth2')[0],
      clientId: tobiAppConfig.oidc.clientId,
      redirectUri: tobiAppConfig.oidc.redirectUri,
      authParams: {
        pkce: true,
        issuer: tobiAppConfig.oidc.issuer,
        scopes: tobiAppConfig.oidc.scopes,
      },
    });
  }

  ngOnInit(): void {
    this.oktaSignin.remove();
    this.oktaSignin.renderEl(
      { el: 'okta=sign-in-widget' },
      (response: { status: string }) => {
        if (response.status === 'SUCCESS') {
          this.oktaAuthService.signInWithRedirect();
        }
      }
    );
  }
}
