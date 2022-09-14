module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "2.2.0"
  
  create_bucket                              = var.create_bucket
  attach_elb_log_delivery_policy             = var.attach_elb_log_delivery_policy
  attach_lb_log_delivery_policy              = var.attach_lb_log_delivery_policy
  attach_deny_insecure_transport_policy      = var.attach_deny_insecure_transport_policy
  attach_require_latest_tls_policy           = var.attach_require_latest_tls_policy
  attach_policy                              = var.attach_policy
  attach_public_policy                       = var.attach_public_policy
  bucket                                     = var.bucket
  bucket_prefix                              = var.bucket_prefix
  acl                                        = var.acl
  policy                                     = var.policy
  tags                                       = var.tags
  force_destroy                              = var.force_destroy
  acceleration_status                        = var.acceleration_status
  request_payer                              = var.request_payer
  website                                    = var.website
  cors_rule                                  = var.cors_rule
  versioning                                 = var.versioning
  logging                                    = var.logging
  grant                                      = var.grant
  owner                                      = var.owner
  expected_bucket_owner                      = var.expected_bucket_owner
  lifecycle_rule                             = var.lifecycle_rule
  replication_configuration                  = var.replication_configuration
  server_side_encryption_configuration       = var.server_side_encryption_configuration
  intelligent_tiering                        = var.intelligent_tiering
  object_lock_configuration                  = var.object_lock_configuration
  object_lock_enabled                        = var.object_lock_enabled
  block_public_acls                          = var.block_public_acls
  block_public_policy                        = var.block_public_policy
  ignore_public_acls                         = var.ignore_public_acls
  restrict_public_buckets                    = var.restrict_public_buckets
  control_object_ownership                   = var.control_object_ownership
  object_ownership                           = var.object_ownership



}