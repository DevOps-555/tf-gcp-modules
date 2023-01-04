data "terraform_remote_state" "foo" {
  backend = "gcs"
  config = {
    bucket  = "terraform-state-bucket-001"
    prefix  = "gce"
  }
}

resource "template_file" "bar" {
  template = "${greeting}"

  vars {
    greeting = "${data.terraform_remote_state.foo.greeting}"
  }
}
