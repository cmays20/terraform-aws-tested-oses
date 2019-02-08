AWS Tested OSes
============
This module returns for an given OS the AMI aswell as its default user and the prerequisits script


EXAMPLE
-------
```hcl
module "dcos-tested-oses" {
  source  = "terraform-dcos/tested-oses/aws"
  version = "~> 0.1.0"
}
```


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws_ami | AMI that will be used for the instances instead of the Mesosphere chosen default images. Custom AMIs must fulfill the Mesosphere DC/OS system-requirements: See https://docs.mesosphere.com/1.12/installing/production/system-requirements/ | map | `<map>` | no |
| aws_default_os_user | Map OS name to default login user (e.g. centos -> centos, coreos -> coreos) | map | `<map>` | no |
| os | Operating system to use | string | `centos_7.4` | no |
| provider | Provider to use | string | `aws` | no |
| region | region | string | `` | no |

## Outputs

| Name | Description |
|------|-------------|
| aws_ami | AMI that will be used for the instances instead of the Mesosphere chosen default images. Custom AMIs must fulfill the Mesosphere DC/OS system-requirements: See https://docs.mesosphere.com/1.12/installing/production/system-requirements/ |
| os-setup | os-setup |
| user | User |

