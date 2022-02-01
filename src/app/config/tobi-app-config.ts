export default {
  oidc: {
    clientId: '0oa3s3tzd8fPb8nMv5d7', // public identifier
    issuer: 'https://dev-25748741.okta.com/oauth2/default', // issuer of tokens
    redirectUri: 'http:localhost:4200/login/callback', // where we send the user once they login
    scopes: ['openid', 'profile', 'email'], // access to information about the user
  },
};
