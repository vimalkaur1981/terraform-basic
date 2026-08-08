variable "instance_type" {
  default = "t2.nano"
}

//envirnoment variable export TF_VAR_instance_type="t2.small"
//-var="instance_type=m5.large"