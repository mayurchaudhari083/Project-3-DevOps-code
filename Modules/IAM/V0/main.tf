data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = var.service_principals
    }
  }
}

resource "aws_iam_role" "this" {
  name               = var.role_name
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
}

resource "aws_iam_instance_profile" "this" {
  name = "${var.role_name}-profile"
  role = aws_iam_role.this.name
}

# Create one inline policy per permission block
resource "aws_iam_role_policy" "inline_policies" {
  for_each = { for perm in var.permissions : perm.name => perm }

  name = each.key
  role = aws_iam_role.this.id

  policy = data.aws_iam_policy_document.inline_policies[each.key].json
}

data "aws_iam_policy_document" "inline_policies" {
  for_each = { for perm in var.permissions : perm.name => perm }

  statement {
    actions   = each.value.actions
    resources = each.value.resources
    effect    = "Allow"
  }
}
