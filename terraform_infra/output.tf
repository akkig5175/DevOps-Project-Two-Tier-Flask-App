output "jenkins_public_ip" {
  value = aws_instance.jenkins_server.public_ip
}

output "deploy_public_ip" {
  value = aws_instance.deploy_server.public_ip
}
