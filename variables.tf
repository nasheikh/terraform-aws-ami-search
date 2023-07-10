variable "os" {
  description = "The Os reference to search for"
}

variable "amis_primary_owners" {
  description = "Force the ami Owner, could be (self) or specific (id)"
  default     = ""
}

variable "amis_os_map_regex" {
  description = "Map of regex to search amis"
  type        = map(string)
  default = {
    ubuntu-14            = "ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-.*"
    ubuntu-16            = "ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-.*"
    ubuntu-18            = "ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-.*"
    ubuntu-20            = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-.*"
    ubuntu-22            = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-.*"
    ubuntu-23            = "ubuntu/images/hvm-ssd/ubuntu-lunar-23.04-arm64-server-.*"
    centos-6             = "CentOS.Linux.6.*x86_64.*"
    centos-7             = "CentOS.Linux.7.*x86_64.*"
    centos-8             = "CentOS.Linux.8.*x86_64.*"
    rhel-6               = "RHEL-6.*x86_64.*"
    rhel-7               = "RHEL-7.*x86_64.*"
    rhel-8               = "RHEL-8.*x86_64.*"
    debian-8             = "debian-jessie-.*"
    debian-9             = "debian-stretch-.*"
    debian-10            = "debian-10-.*"
    fedora-27            = "Fedora-Cloud-Base-27-.*-gp2.*"
    amazon-1_lts         = "amzn-ami-hvm-.*x86_64-gp2"
    amazon-2_lts         = "amzn2-ami-hvm-.*x86_64-gp2"
    suse-15              = "suse-sles-15-sp\\d-v\\d{8}-hvm-ssd-x86_64"
    suse-12              = "suse-sles-12-sp\\d-v\\d{8}-hvm-ssd-x86_64"
  }
}

variable "amis_os_map_owners" {
  description = "Map of amis owner to filter only official amis"
  type        = map(string)
  default = {
    ubuntu-14            = "099720109477" #CANONICAL
    ubuntu-16            = "099720109477" #CANONICAL
    ubuntu-18            = "099720109477" #CANONICAL
    ubuntu-19            = "099720109477" #CANONICAL
    ubuntu-20            = "099720109477" #CANONICAL
    ubuntu-22            = "099720109477" #CANONICAL
    ubuntu-23            = "099720109477" #CANONICAL
    rhel-6               = "309956199498" #Amazon Web Services
    rhel-7               = "309956199498" #Amazon Web Services
    rhel-8               = "309956199498" #Amazon Web Services
    centos-6             = "679593333241"
    centos-7             = "679593333241"
    centos-8             = "679593333241"
    debian-8             = "679593333241"
    debian-9             = "679593333241"
    debian-10            = "136693071363"
    fedora-27            = "125523088429" #Fedora
    amazon-1_lts         = "137112412989" #amazon
    amazon-2_lts         = "137112412989" #amazon
    suse-15              = "013907871322" #amazon
    suse-12              = "013907871322" #amazon
  }
}
