resource "aws_ssm_parameter" "primary" {
  name  = "/${var.project_name}/site/state"
  type  = "String"
  value = lookup(var.active_states, var.region_primary)
}

resource "aws_ssm_parameter" "secondary" {
  provider = aws.secondary
  name     = "/${var.project_name}/site/state"
  type     = "String"
  value    = lookup(var.active_states, var.region_secondary)
}