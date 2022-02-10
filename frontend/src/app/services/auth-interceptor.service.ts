import {
  HttpEvent,
  HttpHandler,
  HttpInterceptor,
  HttpRequest,
} from '@angular/common/http';
import { Injectable } from '@angular/core';
import { OktaAuthService } from '@okta/okta-angular';
import { from, Observable } from 'rxjs';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root',
})
export class AuthInterceptorService implements HttpInterceptor {
  constructor(private oktaAuth: OktaAuthService) {}

  intercept(
    request: HttpRequest<any>,
    next: HttpHandler
  ): Observable<HttpEvent<any>> {
    return from(this.handleAccess(request, next));
  }

  private async handleAccess(
    request: HttpRequest<any>,
    next: HttpHandler
  ): Promise<HttpEvent<any>> {
    const theEndPoint = environment.tobiApiUrl + '/orders';
    const securedEndpoints = [theEndPoint];

    if (securedEndpoints.some((url) => request.urlWithParams.includes(url))) {
      const accessToken = await this.oktaAuth.getAccessToken();

      request = request.clone({
        setHeaders: {
          Authorization: 'Bearer ' + accessToken,
        },
      });
    }

    //@ts-ignore
    return next.handle(request).toPromise();
  }
}
