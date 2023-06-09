output "idt-github-issue-webhook-url" {
  value       = module.idt-github-issue-webhook.function_url
  description = "The URL of the deployed Lambda"
}

