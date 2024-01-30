resource "aws_instance" "Dharmam" {
  ## resource name is Niteesh & aws_instance is resource type
  ami                    = var.amiid
  instance_type          = var.inst-type
  availability_zone      = var.zone
  key_name               = var.key
  vpc_security_group_ids = [var.secgroupid]
  tags = {
    Name    = var.tag-name
    project = var.tag-project
  }
  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }
  connection {
    user        = var.imx
    private_key = file("jenkins-key1")
    host        = self.public_ip
  }
}


