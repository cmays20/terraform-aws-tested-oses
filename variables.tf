variable "provider" {
  description = "Provider to use"
  default     = "aws"
}

variable "os" {
  description = "Operating system to use"
  default     = "centos_7.4"
}

variable "region" {
  description = "region"
  default     = ""
}

variable "aws_default_os_user" {
  description = "Map OS name to default login user (e.g. centos -> centos, coreos -> coreos)"
  type        = "map"

  default = {
    coreos = "core"
    centos = "centos"
    ubuntu = "ubuntu"
    rhel   = "ec2-user"
  }
}

# AWS recommends all HVM vs PV. HVM Below.
variable "aws_ami" {
  description = "AMI that will be used for the instances instead of the Mesosphere chosen default images. Custom AMIs must fulfill the Mesosphere DC/OS system-requirements: See https://docs.mesosphere.com/1.12/installing/production/system-requirements/"
  type        = "map"

  default = {
    # Centos 7.2
    centos_7.2_ap-south-1     = "ami-95cda6fa"
    centos_7.2_eu-west-2      = "ami-bb373ddf"
    centos_7.2_eu-west-1      = "ami-7abd0209"
    centos_7.2_ap-northeast-2 = "ami-c74789a9"
    centos_7.2_ap-northeast-1 = "ami-eec1c380"
    centos_7.2_sa-east-1      = "ami-26b93b4a"
    centos_7.2_ca-central-1   = "ami-af62d0cb"
    centos_7.2_ap-southeast-1 = "ami-f068a193"
    centos_7.2_ap-southeast-2 = "ami-fedafc9d"
    centos_7.2_eu-central-1   = "ami-9bf712f4"
    centos_7.2_us-east-1      = "ami-6d1c2007"
    centos_7.2_us-east-2      = "ami-6a2d760f"
    centos_7.2_us-west-1      = "ami-af4333cf"
    centos_7.2_us-west-2      = "ami-d2c924b2"

    # Centos 7.3
    centos_7.3_ap-south-1     = "ami-3c0e7353"
    centos_7.3_eu-west-2      = "ami-e05a4d84"
    centos_7.3_eu-west-1      = "ami-061b1560"
    centos_7.3_ap-northeast-2 = "ami-08e93466"
    centos_7.3_ap-northeast-1 = "ami-29d1e34e"
    centos_7.3_sa-east-1      = "ami-b31a75df"
    centos_7.3_ca-central-1   = "ami-28823e4c"
    centos_7.3_ap-southeast-1 = "ami-7d2eab1e"
    centos_7.3_ap-southeast-2 = "ami-34171d57"
    centos_7.3_eu-central-1   = "ami-fa2df395"
    centos_7.3_us-east-1      = "ami-46c1b650"
    centos_7.3_us-east-2      = "ami-18f8df7d"
    centos_7.3_us-west-1      = "ami-f5d7f195"
    centos_7.3_us-west-2      = "ami-f4533694"

    # Centos 7.4
    centos_7.4_ap-south-1     = "ami-82a3eaed"
    centos_7.4_eu-west-3      = "ami-0c60d771"
    centos_7.4_eu-west-2      = "ami-c8d7c9ac"
    centos_7.4_eu-west-1      = "ami-147fc16d"
    centos_7.4_ap-northeast-2 = "ami-53a1073d"
    centos_7.4_ap-northeast-1 = "ami-1b27a37d"
    centos_7.4_sa-east-1      = "ami-284d0a44"
    centos_7.4_ca-central-1   = "ami-161ea572"
    centos_7.4_ap-southeast-1 = "ami-a6e88dda"
    centos_7.4_ap-southeast-2 = "ami-5b778339"
    centos_7.4_eu-central-1   = "ami-1e038d71"
    centos_7.4_us-east-1      = "ami-02e98f78"
    centos_7.4_us-east-2      = "ami-2d103948"
    centos_7.4_us-west-1      = "ami-b1a59fd1"
    centos_7.4_us-west-2      = "ami-02c71d7a"

    # Centos 7.5
    centos_7.5_ap-south-1     = "ami-1780a878"
    centos_7.5_eu-west-3      = "ami-262e9f5b"
    centos_7.5_eu-west-2      = "ami-00846a67"
    centos_7.5_eu-west-1      = "ami-3548444c"
    centos_7.5_ap-northeast-2 = "ami-bf9c36d1"
    centos_7.5_ap-northeast-1 = "ami-8e8847f1"
    centos_7.5_sa-east-1      = "ami-cb5803a7"
    centos_7.5_ca-central-1   = "ami-e802818c"
    centos_7.5_ap-southeast-1 = "ami-8e0205f2"
    centos_7.5_ap-southeast-2 = "ami-d8c21dba"
    centos_7.5_eu-central-1   = "ami-dd3c0f36"
    centos_7.5_us-east-1      = "ami-9887c6e7"
    centos_7.5_us-east-2      = "ami-9c0638f9"
    centos_7.5_us-west-1      = "ami-4826c22b"
    centos_7.5_us-west-2      = "ami-3ecc8f46"

    # CoreOS 835.13.0
    coreos_835.13.0_eu-west-1      = "ami-4b18aa38"
    coreos_835.13.0_eu-west-1      = "ami-2a1fad59"
    coreos_835.13.0_ap-northeast-1 = "ami-02c9c86c"
    coreos_835.13.0_sa-east-1      = "ami-c40784a8"
    coreos_835.13.0_ap-southeast-1 = "ami-00a06963"
    coreos_835.13.0_ap-southeast-2 = "ami-949abdf7"
    coreos_835.13.0_eu-central-1   = "ami-15190379"
    coreos_835.13.0_us-east-1      = "ami-7f3a0b15"
    coreos_835.13.0_us-west-1      = "ami-a8aedfc8"
    coreos_835.13.0_us-west-2      = "ami-4f00e32f"

    # CoreOS 1235.9
    coreos_1235.9.0_ap-south-1     = "ami-7e641511"
    coreos_1235.9.0_eu-west-2      = "ami-054c5961"
    coreos_1235.9.0_ap-northeast-2 = "ami-d65889b8"
    coreos_1235.9.0_ap-northeast-1 = "ami-885f19ef"
    coreos_1235.9.0_sa-east-1      = "ami-3e5d3952"
    coreos_1235.9.0_ca-central-1   = "ami-c8c67bac"
    coreos_1235.9.0_ap-southeast-1 = "ami-14cc7877"
    coreos_1235.9.0_ap-southeast-2 = "ami-d92422ba"
    coreos_1235.9.0_eu-central-1   = "ami-9501c8fa"
    coreos_1235.9.0_us-east-1      = "ami-fd6c94eb"
    coreos_1235.9.0_us-east-2      = "ami-72032617"
    coreos_1235.9.0_us-west-1      = "ami-b6bae7d6"
    coreos_1235.9.0_us-west-2      = "ami-4c49f22c"
    coreos_1235.9.0_eu-west-1      = "ami-188dd67e"

    # CoreOS 1465.8.0
    coreos_1465.8.0_ap-south-1     = "ami-d18dcbbe"
    coreos_1465.8.0_eu-west-2      = "ami-6cc6d508"
    coreos_1465.8.0_eu-west-1      = "ami-40589439"
    coreos_1465.8.0_ap-northeast-2 = "ami-2d7ca743"
    coreos_1465.8.0_ap-northeast-1 = "ami-e98c458f"
    coreos_1465.8.0_sa-east-1      = "ami-42ff822e"
    coreos_1465.8.0_ca-central-1   = "ami-e899208c"
    coreos_1465.8.0_ap-southeast-1 = "ami-3f5b2d5c"
    coreos_1465.8.0_ap-southeast-2 = "ami-b02accd2"
    coreos_1465.8.0_eu-central-1   = "ami-e1d9688e"
    coreos_1465.8.0_us-east-1      = "ami-e2d33d98"
    coreos_1465.8.0_us-east-2      = "ami-5ab7953f"
    coreos_1465.8.0_us-west-1      = "ami-a57d4cc5"
    coreos_1465.8.0_us-west-2      = "ami-82bd41fa"
    coreos_1465.8.0_eu-west-1      = "ami-1a589463"

    # CoreOS 1576.5.0
    coreos_1576.5.0_us-east-1      = "ami-b5742acf"
    coreos_1576.5.0_us-east-2      = "ami-e9a48f8c"
    coreos_1576.5.0_us-west-1      = "ami-27878747"
    coreos_1576.5.0_us-west-2      = "ami-1d7fcb65"
    coreos_1576.5.0_ca-central-1   = "ami-59f97c3d"
    coreos_1576.5.0_eu-central-1   = "ami-b08210df"
    coreos_1576.5.0_eu-west-1      = "ami-901484e9"
    coreos_1576.5.0_eu-west-2      = "ami-68b8a00c"
    coreos_1576.5.0_eu-west-3      = "ami-8702b5fa"
    coreos_1576.5.0_ap-southeast-1 = "ami-bac5b5c6"
    coreos_1576.5.0_ap-southeast-2 = "ami-628f7200"
    coreos_1576.5.0_ap-northeast-2 = "ami-c0bf1fae"
    coreos_1576.5.0_ap-northeast-1 = "ami-ffae3799"
    coreos_1576.5.0_ap-south-1     = "ami-f0f5a19f"
    coreos_1576.5.0_sa-east-1      = "ami-053b7969"

    # CoreOS 1855.5.0
    coreos_1855.5.0_ap-northeast-1 = "ami-0a8c6be5f87b35dd4"
    coreos_1855.5.0_ap-northeast-2 = "ami-0cac5781f008b2bda"
    coreos_1855.5.0_ap-south-1     = "ami-0cd820071bc8b5305"
    coreos_1855.5.0_ap-southeast-1 = "ami-00aa99ecc25144574"
    coreos_1855.5.0_ap-southeast-2 = "ami-008d71c75e5ae947c"
    coreos_1855.5.0_ca-central-1   = "ami-07d53410c0f2b0132"
    coreos_1855.5.0_eu-central-1   = "ami-09699c9a5df9e662b"
    coreos_1855.5.0_eu-west-1      = "ami-07c86c6e70759b682"
    coreos_1855.5.0_eu-west-2      = "ami-074e993e6c24f801b"
    coreos_1855.5.0_eu-west-3      = "ami-09cb56d44bcbdde4b"
    coreos_1855.5.0_sa-east-1      = "ami-01b155f0246dad1a8"
    coreos_1855.5.0_us-east-1      = "ami-0bb5afc82c391abb7"
    coreos_1855.5.0_us-east-2      = "ami-068b76746d50afb12"
    coreos_1855.5.0_us-west-1      = "ami-07d8f0cf1498b72f4"
    coreos_1855.5.0_us-west-2      = "ami-0884a563b7da04715"

    # RHEL 7.3
    rhel_7.3_ap-south-1     = "ami-29bdc246"
    rhel_7.3_eu-west-2      = "ami-40a8bf24"
    rhel_7.3_eu-west-1      = "ami-f1978897"
    rhel_7.3_ap-northeast-2 = "ami-908f50fe"
    rhel_7.3_ap-northeast-1 = "ami-5c9a933b"
    rhel_7.3_sa-east-1      = "ami-5f2f4433"
    rhel_7.3_ca-central-1   = "ami-14e65970"
    rhel_7.3_ap-southeast-1 = "ami-cb981aa8"
    rhel_7.3_ap-southeast-2 = "ami-9a3322f9"
    rhel_7.3_eu-central-1   = "ami-0e258161"
    rhel_7.3_us-east-1      = "ami-9e2f0988"
    rhel_7.3_us-east-2      = "ami-11aa8c74"
    rhel_7.3_us-west-1      = "ami-e69ebc86"
    rhel_7.3_us-west-2      = "ami-b55a51cc"
  }
}
