variable "topic_name" {
  description = "Specify the SNS name"
  default = ""
}

resource "aws_sns_topic" "topic" {
  name = "${var.topic_name}"
}

output "topic_arn" {
  value = "${join(",",aws_sns_topic.topic.*.arn)}"
}

