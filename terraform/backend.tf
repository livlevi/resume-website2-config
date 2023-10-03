terraform {
  cloud {
    organization = "bio-website-practice"

    workspaces {
      name = "resume-site-config"
    }
  }
}