provider "auth0" {
  domain = "aerospike-dev.us.auth0.com"
}

module "admin_console" {
  source = "../modules/admin_console"
}

resource "auth0_client" "my_client" {
  name            = "Aerospike Cloud"
  description     = "Aerospike Cloud Application"
  app_type        = "spa"
  callbacks       = ["http://localhost:3000/callback", "http://localhost:3000", "https://laughing-goggles-219a4c7f.pages.github.io/", "https://legendary-bassoon-0465702a.pages.github.io/", "http://insomnia", "https://oauth.pstmn.io/v1/callback"]
  oidc_conformant = true

  jwt_configuration {
    alg = "RS256"
  }
}