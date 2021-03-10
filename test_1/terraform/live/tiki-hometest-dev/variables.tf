variable "region" {
  default = "asia-southeast1"
}

variable "zone_sing_b" {
  default = "asia-southeast1-b"
}

variable "instance_name" {
  default = "hometest-lab"
}

variable "vm_type" {
  default = "n1-standard-1"
}

variable "os_image" {
  default = "centos-cloud/centos-8"
}

variable "google_project_id" {
  description = "Name of your GCP project."
  default     = "hometest"
}

variable "public_key_path" {
  description = "Path to the public SSH key you want to bake into the instance."
  default     = "~/.ssh/id_rsa.pub"
}

variable "ssh_user_admin" {
  description = "SSH user name to connect to your instance."
  default     = "damviet"
}

variable "ssh_user_test" {
  description = "SSH user name"
  default     = "test"
}

variable "ssh_key_test" {
  description = "SSH key"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDJ1RsgRJsaWLZZaXvnWfn3Bm43YVH2HNCTG58ZSlCQCKl5/YKyDcQkuv6NWVHkFWluuiHq+z4bGitU83WWR8tUnJu060rcjhvWS7L/iNdrQAK8kzol20llezJcO/LpZeAsnAKSqY2iQysro3A6PzUdhL8pG6agz7J0GC+Tl+PuBxIcFQm4sUaRrcQU8Ju8vxK+Twe954s8CnAS0XWyJsIJJrhCnim9d+wRG1xqLmzFYlu6A01FctfSRLPGsF+XEkubVaK04rs8m1Og4ucD2sZ0Ysip9sFFTeQpUnx+ug8SlwWMHBZlbSDRNtu4fPeHJvWPAVxK+je2xqP9a5BbX2OT7++g0CZh23Vk5FRFsf7MA7O6SVjMDPnhI0fcKa0FKqQBAywieSbgIKkdkaqYaLpsERyQ20kUvoZvxgSB2sMyRhQb2Z5pCdArmrtSkpsI+hjhPAqNOJfnRZm91atArTX3Sk2OWKMLVtuF5r8uH22eGgCWCluuQfBMHw3Bu8qUmkpKCBGABO4GHyYmiiR7RaOcIAAFUnxcSWRLqJRO5IoHM+XWvU1RwICa0gaF5kvUyV2azpOcq8/481b6XbT0gB5rlWnTEI2QO7JYm1Hu5hUkr9iM2asRkotMGGwmyYIa1VI5pcc1Kh2sSqDe473O03ItwsDv/r+qcoDD0jWu2Whjcw== test@example.com"
}

