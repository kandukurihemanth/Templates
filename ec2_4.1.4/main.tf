data "aws_availability_zones" "available" {
  state = "available"
}
provider "aws" {
  region = var.region
}
module "ec2-instance" {
  source                                     = "terraform-aws-modules/ec2-instance/aws"
  version                                    = "4.1.4"
  create                                     = var.create
  name                                       = var.name
  associate_public_ip_address                = var.associate_public_ip_address
  ami                                        = var.ami
  instance_type                              = var.instance_type
  key_name                                   = var.key_name
  monitoring                                 = var.monitoring
  availability_zone                          =  data.aws_availability_zones.available
  capacity_reservation_specification         = var.capacity_reservation_specification
  cpu_credits                                = var.cpu_credits
  disable_api_termination                    = var.disable_api_termination
  ebs_block_device                           = var.ebs_block_device
  ebs_optimized                              = var.ebs_optimized
  enclave_options_enabled                    = var.enclave_options_enabled
  ephemeral_block_device                     = var.ephemeral_block_device
  get_password_data                          = var.get_password_data
  hibernation                                = var.hibernation
  host_id                                    = var.host_id
  iam_instance_profile                       = var.iam_instance_profile
  instance_initiated_shutdown_behavior       = var.instance_initiated_shutdown_behavior
  ipv6_address_count                         = var.ipv6_address_count
  ipv6_addresses                             = var.ipv6_addresses
  launch_template                            =  var.launch_template
  network_interface                          = var.network_interface
  placement_group                            = var.placement_group
  private_ip                                 = var.private_ip
  root_block_device                          = var.root_block_device
  secondary_private_ips                      = var.secondary_private_ips
  source_dest_check                          = var.source_dest_check
  subnet_id                                  = var.subnet_id
  user_data                                  = var.user_data
  metadata_options                           = var.metadata_options
  tags                                       = var.tags
  tenancy                                    =  var.tenancy
  user_data_base64                           = var.user_data_base64
  user_data_replace_on_change                = var.user_data_replace_on_change
  volume_tags                                = var.volume_tags
  enable_volume_tags                         = var.enable_volume_tags
  vpc_security_group_ids                     = var.vpc_security_group_ids
  timeouts                                   = var.timeouts
  cpu_core_count                             = var.cpu_core_count
  cpu_threads_per_core                       = var.cpu_threads_per_core
  create_spot_instance                       = var.create_spot_instance
  spot_price                                 = var.spot_price
  spot_wait_for_fulfillment                  = var.spot_wait_for_fulfillment
  spot_type                                  = var.spot_type
  spot_launch_group                          = var.spot_launch_group
  spot_block_duration_minutes                = var.spot_block_duration_minutes
  spot_instance_interruption_behavior        = var.spot_instance_interruption_behavior
  spot_valid_until                           = var.spot_valid_until
  spot_valid_from                            = var.spot_valid_from
  disable_api_stop                           = var.disable_api_stop

}

