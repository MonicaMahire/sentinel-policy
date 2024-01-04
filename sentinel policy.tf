import "tfplan"

main = rule {
  all tfplan.resources.aws_instance as _, instances {
    all instances as _, r {
      r.aws_instance.tags contains "Name" and r.aws_instance.tags.Name != ""
    }
  }
}
