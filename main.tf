terraform {
  backend "s3" {
    encrypt = true
    bucket  = ""
    region  = "us-west-2"
    key     = "indent/terraform.tfstate"
  }

}

# Indent + GitHub Issues Integration

# Details: https://github.com/indentapis/integrations/tree/66ff4232954ef525f523a1cb8062e4509656de27/packages/stable/indent-integration-github-issue
# Last Change: https://github.com/indentapis/integrations/commit/66ff4232954ef525f523a1cb8062e4509656de27

module "idt-github-issue-webhook" {
  source                = "git::https://github.com/indentapis/integrations//terraform/modules/indent_runtime_aws_lambda"
  name                  = "idt-github-issue-webhook"
  indent_webhook_secret = var.indent_webhook_secret
  artifact = {
    bucket       = "indent-artifacts-us-west-2"
    function_key = "webhooks/aws/lambda/github-issue-66ff4232954ef525f523a1cb8062e4509656de27-function.zip"
    deps_key     = "webhooks/aws/lambda/github-issue-66ff4232954ef525f523a1cb8062e4509656de27-deps.zip"
  }
  env = {
    GH_TOKEN          = var.gh_token
    GITHUB_ORG        = var.github_org
    GITHUB_REPO       = var.github_repo
    INDENT_SPACE_NAME = var.indent_space_name
  }
}

