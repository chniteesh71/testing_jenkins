variable "region" {
  default = "us-east-1"
}
variable "amiid" {
  default = "ami-0c7217cdde317cfec"
  ## ami-0c7217cdde317cfec - ubuntu
  ## ami-0a3c3a20c09d6f377 - amazon linux
}
variable "inst-type" {
  default = "t2.micro"
}
variable "key" {
  default = "jenkins-key"
}
variable "zone" {
  default = "us-east-1a"
}

variable "secgroupid" {
  default = "sg-0bf6fe24e076be525"
}

variable "tag-name" {
  default = "Ganesh&Karthikeya"
}

variable "tag-project" {
  default = "Knowledge&weapons"
}

variable "imx" {
  default = "ubuntu"
}

