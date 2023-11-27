terraform {
  backend "gcs" {
    credentials = "credentials.json"
    bucket      = "blue-schedule"
    prefix      = "terraform/schedule-state-stage"
  }
}
