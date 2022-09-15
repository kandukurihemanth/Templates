variable "region"{
  description = "launch resources in particular region"
  type = string
}
variable "create_vpc" {
  description = "Controls if VPC should be created (it affects almost all resources)"
  type        = bool
  
}
variable "vpc_name" {
  description = " name of VPC"
  type = string
}
variable "cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  
}
variable "enable_ipv6" {
  description = "Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block."
  type        = bool
  
}
variable "private_subnet_ipv6_prefixes" {
  description = "Assigns IPv6 private subnet id based on the Amazon provided /56 prefix base 10 integer (0-256). Must be of equal length to the corresponding IPv4 subnet list"
  type        = list(string)
  
}
variable "public_subnet_ipv6_prefixes" {
  description = "Assigns IPv6 public subnet id based on the Amazon provided /56 prefix base 10 integer (0-256). Must be of equal length to the corresponding IPv4 subnet list"
  type        = list(string)
  

}
variable "outpost_subnet_ipv6_prefixes" {
  description = "Assigns IPv6 outpost subnet id based on the Amazon provided /56 prefix base 10 integer (0-256). Must be of equal length to the corresponding IPv4 subnet list"
  type        = list(string)
  
}
variable "database_subnet_ipv6_prefixes" {
  description = "Assigns IPv6 database subnet id based on the Amazon provided /56 prefix base 10 integer (0-256). Must be of equal length to the corresponding IPv4 subnet list"
  type        = list(string)

}
variable "redshift_subnet_ipv6_prefixes" {
  description = "Assigns IPv6 redshift subnet id based on the Amazon provided /56 prefix base 10 integer (0-256). Must be of equal length to the corresponding IPv4 subnet list"
  type        = list(string)
  
}

variable "elasticache_subnet_ipv6_prefixes" {
  description = "Assigns IPv6 elasticache subnet id based on the Amazon provided /56 prefix base 10 integer (0-256). Must be of equal length to the corresponding IPv4 subnet list"
  type        = list(string)
  
}
variable "intra_subnet_ipv6_prefixes" {
  description = "Assigns IPv6 intra subnet id based on the Amazon provided /56 prefix base 10 integer (0-256). Must be of equal length to the corresponding IPv4 subnet list"
  type        = list(string)
  
}
variable "assign_ipv6_address_on_creation" {
  description = "Assign IPv6 address on subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch"
  type        = bool
 
}
variable "private_subnet_assign_ipv6_address_on_creation" {
  description = "Assign IPv6 address on private subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch"
  type        = bool
  
}
variable "public_subnet_assign_ipv6_address_on_creation" {
  description = "Assign IPv6 address on public subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch"
  type        = bool
  
}
variable "outpost_subnet_assign_ipv6_address_on_creation" {
  description = "Assign IPv6 address on outpost subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch"
  type        = bool
  
}
variable "database_subnet_assign_ipv6_address_on_creation" {
  description = "Assign IPv6 address on database subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch"
  type        = bool
  
}
variable "redshift_subnet_assign_ipv6_address_on_creation" {
  description = "Assign IPv6 address on redshift subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch"
  type        = bool
  
}
variable "elasticache_subnet_assign_ipv6_address_on_creation" {
  description = "Assign IPv6 address on elasticache subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch"
  type        = bool
  
}
variable "intra_subnet_assign_ipv6_address_on_creation" {
  description = "Assign IPv6 address on intra subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch"
  type        = bool
  
}

variable "secondary_cidr_blocks" {
  description = "List of secondary CIDR blocks to associate with the VPC to extend the IP Address pool"
  type        = list(string)
  
}
variable "instance_tenancy" {
  description = "A tenancy option for instances launched into the VPC"
  type        = string
  
}
variable "public_subnet_suffix" {
  description = "Suffix to append to public subnets name"
  type        = string
  
}

variable "private_subnet_suffix" {
  description = "Suffix to append to private subnets name"
  type        = string
  
}
variable "outpost_subnet_suffix" {
  description = "Suffix to append to outpost subnets name"
  type        = string
  
}
variable "intra_subnet_suffix" {
  description = "Suffix to append to intra subnets name"
  type        = string
  
}

variable "database_subnet_suffix" {
  description = "Suffix to append to database subnets name"
  type        = string
 
}
variable "redshift_subnet_suffix" {
  description = "Suffix to append to redshift subnets name"
  type        = string
  
}
variable "elasticache_subnet_suffix" {
  description = "Suffix to append to elasticache subnets name"
  type        = string
  
}
variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
  
}
variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
  
}
variable "outpost_subnets" {
  description = "A list of outpost subnets inside the VPC"
  type        = list(string)
  
}
variable "database_subnets" {
  description = "A list of database subnets"
  type        = list(string)
 
}

variable "redshift_subnets" {
  description = "A list of redshift subnets"
  type        = list(string)
 
}
variable "elasticache_subnets" {
  description = "A list of elasticache subnets"
  type        = list(string)
 
}
variable "intra_subnets" {
  description = "A list of intra subnets"
  type        = list(string)
  
}
variable "create_database_subnet_route_table" {
  description = "Controls if separate route table for database should be created"
  type        = bool
  
}
variable "create_redshift_subnet_route_table" {
  description = "Controls if separate route table for redshift should be created"
  type        = bool
  
}

variable "enable_public_redshift" {
  description = "Controls if redshift should have public routing table"
  type        = bool
  
}
variable "create_elasticache_subnet_route_table" {
  description = "Controls if separate route table for elasticache should be created"
  type        = bool
  
}
variable "create_database_subnet_group" {
  description = "Controls if database subnet group should be created (n.b. database_subnets must also be set)"
  type        = bool
  
}
variable "create_elasticache_subnet_group" {
  description = "Controls if elasticache subnet group should be created"
  type        = bool
  
}
variable "create_redshift_subnet_group" {
  description = "Controls if redshift subnet group should be created"
  type        = bool
 
}
variable "create_database_internet_gateway_route" {
  description = "Controls if an internet gateway route for public database access should be created"
  type        = bool
  
}
variable "create_database_nat_gateway_route" {
  description = "Controls if a nat gateway route should be created to give internet access to the database subnets"
  type        = bool
  
}
variable "azs" {
  description = "A list of availability zones names or ids in the region"
  type        = list(string)
 
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
  
}

# tflint-ignore: terraform_unused_declarations
variable "enable_classiclink" {
  description = "[DEPRECATED](https://github.com/hashicorp/terraform/issues/31730) Should be true to enable ClassicLink for the VPC. Only valid in regions and accounts that support EC2 Classic."
  type        = bool
  
}

# tflint-ignore: terraform_unused_declarations
variable "enable_classiclink_dns_support" {
  description = "[DEPRECATED](https://github.com/hashicorp/terraform/issues/31730) Should be true to enable ClassicLink DNS Support for the VPC. Only valid in regions and accounts that support EC2 Classic."
  type        = bool
  
}

variable "enable_nat_gateway" {
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  type        = bool
  
}

variable "nat_gateway_destination_cidr_block" {
  description = "Used to pass a custom destination route for private NAT Gateway. If not specified, the default 0.0.0.0/0 is used as a destination route."
  type        = string
  
}

variable "single_nat_gateway" {
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
  type        = bool
}

variable "one_nat_gateway_per_az" {
  description = "Should be true if you want only one NAT Gateway per availability zone. Requires `var.azs` to be set, and the number of `public_subnets` created to be greater than or equal to the number of availability zones specified in `var.azs`."
  type        = bool
  
}

variable "reuse_nat_ips" {
  description = "Should be true if you don't want EIPs to be created for your NAT Gateways and will instead pass them in via the 'external_nat_ip_ids' variable"
  type        = bool
 
}

variable "external_nat_ip_ids" {
  description = "List of EIP IDs to be assigned to the NAT Gateways (used in combination with reuse_nat_ips)"
  type        = list(string)
  
}

variable "external_nat_ips" {
  description = "List of EIPs to be used for `nat_public_ips` output (used in combination with reuse_nat_ips and external_nat_ip_ids)"
  type        = list(string)
  
}

variable "map_public_ip_on_launch" {
  description = "Should be false if you do not want to auto-assign public IP on launch"
  type        = bool
  
}

variable "customer_gateways" {
  description = "Maps of Customer Gateway's attributes (BGP ASN and Gateway's Internet-routable external IP address)"
  type        = map(map(any))
  
}

variable "enable_vpn_gateway" {
  description = "Should be true if you want to create a new VPN Gateway resource and attach it to the VPC"
  type        = bool
  
}

variable "vpn_gateway_id" {
  description = "ID of VPN Gateway to attach to the VPC"
  type        = string
  
}

variable "amazon_side_asn" {
  description = "The Autonomous System Number (ASN) for the Amazon side of the gateway. By default the virtual private gateway is created with the current default Amazon ASN."
  type        = string
  
}

variable "vpn_gateway_az" {
  description = "The Availability Zone for the VPN Gateway"
  type        = string
  
}

variable "propagate_intra_route_tables_vgw" {
  description = "Should be true if you want route table propagation"
  type        = bool
  
}

variable "propagate_private_route_tables_vgw" {
  description = "Should be true if you want route table propagation"
  type        = bool
 
}

variable "propagate_public_route_tables_vgw" {
  description = "Should be true if you want route table propagation"
  type        = bool
  
}

variable "manage_default_route_table" {
  description = "Should be true to manage default route table"
  type        = bool
  
}

variable "default_route_table_name" {
  description = "Name to be used on the default route table"
  type        = string
 
}

variable "default_route_table_propagating_vgws" {
  description = "List of virtual gateways for propagation"
  type        = list(string)
  
}

variable "default_route_table_routes" {
  description = "Configuration block of routes. See https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_route_table#route"
  type        = list(map(string))
  
}

variable "default_route_table_tags" {
  description = "Additional tags for the default route table"
  type        = map(string)
  
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}

variable "vpc_tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
  
}

variable "igw_tags" {
  description = "Additional tags for the internet gateway"
  type        = map(string)
  
}

variable "public_subnet_tags" {
  description = "Additional tags for the public subnets"
  type        = map(string)
  
}

variable "private_subnet_tags" {
  description = "Additional tags for the private subnets"
  type        = map(string)
  
}

variable "outpost_subnet_tags" {
  description = "Additional tags for the outpost subnets"
  type        = map(string)
 
}

variable "public_route_table_tags" {
  description = "Additional tags for the public route tables"
  type        = map(string)
  
}

variable "private_route_table_tags" {
  description = "Additional tags for the private route tables"
  type        = map(string)
  
}

variable "database_route_table_tags" {
  description = "Additional tags for the database route tables"
  type        = map(string)
  
}

variable "redshift_route_table_tags" {
  description = "Additional tags for the redshift route tables"
  type        = map(string)
  
}

variable "elasticache_route_table_tags" {
  description = "Additional tags for the elasticache route tables"
  type        = map(string)
  
}

variable "intra_route_table_tags" {
  description = "Additional tags for the intra route tables"
  type        = map(string)
  
}

variable "database_subnet_group_name" {
  description = "Name of database subnet group"
  type        = string
  
}

variable "database_subnet_tags" {
  description = "Additional tags for the database subnets"
  type        = map(string)
  
}

variable "database_subnet_group_tags" {
  description = "Additional tags for the database subnet group"
  type        = map(string)
  
}

variable "redshift_subnet_tags" {
  description = "Additional tags for the redshift subnets"
  type        = map(string)
  
}

variable "redshift_subnet_group_name" {
  description = "Name of redshift subnet group"
  type        = string
  
}

variable "redshift_subnet_group_tags" {
  description = "Additional tags for the redshift subnet group"
  type        = map(string)
  
}

variable "elasticache_subnet_group_name" {
  description = "Name of elasticache subnet group"
  type        = string
  
}

variable "elasticache_subnet_group_tags" {
  description = "Additional tags for the elasticache subnet group"
  type        = map(string)
  
}

variable "elasticache_subnet_tags" {
  description = "Additional tags for the elasticache subnets"
  type        = map(string)
 
}

variable "intra_subnet_tags" {
  description = "Additional tags for the intra subnets"
  type        = map(string)
  
}

variable "public_acl_tags" {
  description = "Additional tags for the public subnets network ACL"
  type        = map(string)
  
}

variable "private_acl_tags" {
  description = "Additional tags for the private subnets network ACL"
  type        = map(string)

}

variable "outpost_acl_tags" {
  description = "Additional tags for the outpost subnets network ACL"
  type        = map(string)
  
}

variable "intra_acl_tags" {
  description = "Additional tags for the intra subnets network ACL"
  type        = map(string)
  
}

variable "database_acl_tags" {
  description = "Additional tags for the database subnets network ACL"
  type        = map(string)
  
}

variable "redshift_acl_tags" {
  description = "Additional tags for the redshift subnets network ACL"
  type        = map(string)
  
}

variable "elasticache_acl_tags" {
  description = "Additional tags for the elasticache subnets network ACL"
  type        = map(string)
  
}

variable "dhcp_options_tags" {
  description = "Additional tags for the DHCP option set (requires enable_dhcp_options set to true)"
  type        = map(string)
  
}

variable "nat_gateway_tags" {
  description = "Additional tags for the NAT gateways"
  type        = map(string)
  
}

variable "nat_eip_tags" {
  description = "Additional tags for the NAT EIP"
  type        = map(string)
  
}

variable "customer_gateway_tags" {
  description = "Additional tags for the Customer Gateway"
  type        = map(string)
  
}

variable "vpn_gateway_tags" {
  description = "Additional tags for the VPN gateway"
  type        = map(string)
 
}

variable "vpc_flow_log_tags" {
  description = "Additional tags for the VPC Flow Logs"
  type        = map(string)
  
}

variable "vpc_flow_log_permissions_boundary" {
  description = "The ARN of the Permissions Boundary for the VPC Flow Log IAM Role"
  type        = string
  
}

variable "enable_dhcp_options" {
  description = "Should be true if you want to specify a DHCP options set with a custom domain name, DNS servers, NTP servers, netbios servers, and/or netbios server type"
  type        = bool
  
}

variable "dhcp_options_domain_name" {
  description = "Specifies DNS name for DHCP options set (requires enable_dhcp_options set to true)"
  type        = string
  
}

variable "dhcp_options_domain_name_servers" {
  description = "Specify a list of DNS server addresses for DHCP options set, default to AWS provided (requires enable_dhcp_options set to true)"
  type        = list(string)
  
}

variable "dhcp_options_ntp_servers" {
  description = "Specify a list of NTP servers for DHCP options set (requires enable_dhcp_options set to true)"
  type        = list(string)
  
}

variable "dhcp_options_netbios_name_servers" {
  description = "Specify a list of netbios servers for DHCP options set (requires enable_dhcp_options set to true)"
  type        = list(string)
  
}

variable "dhcp_options_netbios_node_type" {
  description = "Specify netbios node_type for DHCP options set (requires enable_dhcp_options set to true)"
  type        = string
  
}

variable "manage_default_vpc" {
  description = "Should be true to adopt and manage Default VPC"
  type        = bool
  
}

variable "default_vpc_name" {
  description = "Name to be used on the Default VPC"
  type        = string
  
}

variable "default_vpc_enable_dns_support" {
  description = "Should be true to enable DNS support in the Default VPC"
  type        = bool
  
}

variable "default_vpc_enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the Default VPC"
  type        = bool
  
}

# tflint-ignore: terraform_unused_declarations
variable "default_vpc_enable_classiclink" {
  description = "[DEPRECATED](https://github.com/hashicorp/terraform/issues/31730) Should be true to enable ClassicLink in the Default VPC"
  type        = bool
  
}

variable "default_vpc_tags" {
  description = "Additional tags for the Default VPC"
  type        = map(string)
  
}

variable "manage_default_network_acl" {
  description = "Should be true to adopt and manage Default Network ACL"
  type        = bool
 
}

variable "default_network_acl_name" {
  description = "Name to be used on the Default Network ACL"
  type        = string
  
}

variable "default_network_acl_tags" {
  description = "Additional tags for the Default Network ACL"
  type        = map(string)
  
}

variable "public_dedicated_network_acl" {
  description = "Whether to use dedicated network ACL (not default) and custom rules for public subnets"
  type        = bool
  
}

variable "private_dedicated_network_acl" {
  description = "Whether to use dedicated network ACL (not default) and custom rules for private subnets"
  type        = bool
  
}

variable "outpost_dedicated_network_acl" {
  description = "Whether to use dedicated network ACL (not default) and custom rules for outpost subnets"
  type        = bool
  
}

variable "intra_dedicated_network_acl" {
  description = "Whether to use dedicated network ACL (not default) and custom rules for intra subnets"
  type        = bool
  
}

variable "database_dedicated_network_acl" {
  description = "Whether to use dedicated network ACL (not default) and custom rules for database subnets"
  type        = bool
  
}

variable "redshift_dedicated_network_acl" {
  description = "Whether to use dedicated network ACL (not default) and custom rules for redshift subnets"
  type        = bool
 
}

variable "elasticache_dedicated_network_acl" {
  description = "Whether to use dedicated network ACL (not default) and custom rules for elasticache subnets"
  type        = bool
  
}

variable "default_network_acl_ingress" {
  description = "List of maps of ingress rules to set on the Default Network ACL"
  type        = list(map(string))

  default = [
    {
      rule_no    = 100
      action     = "allow"
      from_port  = 0
      to_port    = 0
      protocol   = "-1"
      cidr_block = "0.0.0.0/0"
    },
    {
      rule_no         = 101
      action          = "allow"
      from_port       = 0
      to_port         = 0
      protocol        = "-1"
      ipv6_cidr_block = "::/0"
    },
  ]
}

variable "default_network_acl_egress" {
  description = "List of maps of egress rules to set on the Default Network ACL"
  type        = list(map(string))

  default = [
    {
      rule_no    = 100
      action     = "allow"
      from_port  = 0
      to_port    = 0
      protocol   = "-1"
      cidr_block = "0.0.0.0/0"
    },
    {
      rule_no         = 101
      action          = "allow"
      from_port       = 0
      to_port         = 0
      protocol        = "-1"
      ipv6_cidr_block = "::/0"
    },
  ]
}

variable "public_inbound_acl_rules" {
  description = "Public subnets inbound network ACLs"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "public_outbound_acl_rules" {
  description = "Public subnets outbound network ACLs"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "private_inbound_acl_rules" {
  description = "Private subnets inbound network ACLs"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "private_outbound_acl_rules" {
  description = "Private subnets outbound network ACLs"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "outpost_inbound_acl_rules" {
  description = "Outpost subnets inbound network ACLs"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "outpost_outbound_acl_rules" {
  description = "Outpost subnets outbound network ACLs"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "intra_inbound_acl_rules" {
  description = "Intra subnets inbound network ACLs"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "intra_outbound_acl_rules" {
  description = "Intra subnets outbound network ACLs"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "database_inbound_acl_rules" {
  description = "Database subnets inbound network ACL rules"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "database_outbound_acl_rules" {
  description = "Database subnets outbound network ACL rules"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "redshift_inbound_acl_rules" {
  description = "Redshift subnets inbound network ACL rules"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "redshift_outbound_acl_rules" {
  description = "Redshift subnets outbound network ACL rules"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "elasticache_inbound_acl_rules" {
  description = "Elasticache subnets inbound network ACL rules"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "elasticache_outbound_acl_rules" {
  description = "Elasticache subnets outbound network ACL rules"
  type        = list(map(string))

  default = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]
}

variable "manage_default_security_group" {
  description = "Should be true to adopt and manage default security group"
  type        = bool
  
}

variable "default_security_group_name" {
  description = "Name to be used on the default security group"
  type        = string
}

variable "default_security_group_ingress" {
  description = "List of maps of ingress rules to set on the default security group"
  type        = list(map(string))
  
}

variable "enable_flow_log" {
  description = "Whether or not to enable VPC Flow Logs"
  type        = bool
  
}

variable "default_security_group_egress" {
  description = "List of maps of egress rules to set on the default security group"
  type        = list(map(string))
  
}

variable "default_security_group_tags" {
  description = "Additional tags for the default security group"
  type        = map(string)
}

variable "create_flow_log_cloudwatch_log_group" {
  description = "Whether to create CloudWatch log group for VPC Flow Logs"
  type        = bool
  
}

variable "create_flow_log_cloudwatch_iam_role" {
  description = "Whether to create IAM role for VPC Flow Logs"
  type        = bool
 
}

variable "flow_log_traffic_type" {
  description = "The type of traffic to capture. Valid values: ACCEPT, REJECT, ALL."
  type        = string
  
}

variable "flow_log_destination_type" {
  description = "Type of flow log destination. Can be s3 or cloud-watch-logs."
  type        = string
 
}

variable "flow_log_log_format" {
  description = "The fields to include in the flow log record, in the order in which they should appear."
  type        = string
  
}

variable "flow_log_destination_arn" {
  description = "The ARN of the CloudWatch log group or S3 bucket where VPC Flow Logs will be pushed. If this ARN is a S3 bucket the appropriate permissions need to be set on that bucket's policy. When create_flow_log_cloudwatch_log_group is set to false this argument must be provided."
  type        = string
  
}

variable "flow_log_cloudwatch_iam_role_arn" {
  description = "The ARN for the IAM role that's used to post flow logs to a CloudWatch Logs log group. When flow_log_destination_arn is set to ARN of Cloudwatch Logs, this argument needs to be provided."
  type        = string
  
}

variable "flow_log_cloudwatch_log_group_name_prefix" {
  description = "Specifies the name prefix of CloudWatch Log Group for VPC flow logs."
  type        = string
  
}

variable "flow_log_cloudwatch_log_group_retention_in_days" {
  description = "Specifies the number of days you want to retain log events in the specified log group for VPC flow logs."
  type        = number
  
}

variable "flow_log_cloudwatch_log_group_kms_key_id" {
  description = "The ARN of the KMS Key to use when encrypting log data for VPC flow logs."
  type        = string
 
}

variable "flow_log_max_aggregation_interval" {
  description = "The maximum interval of time during which a flow of packets is captured and aggregated into a flow log record. Valid Values: `60` seconds or `600` seconds."
  type        = number
  
}

variable "create_igw" {
  description = "Controls if an Internet Gateway is created for public subnets and the related routes that connect them."
  type        = bool
  
}

variable "create_egress_only_igw" {
  description = "Controls if an Egress Only Internet Gateway is created and its related routes."
  type        = bool
 
}

variable "outpost_arn" {
  description = "ARN of Outpost you want to create a subnet in."
  type        = string
  
}

variable "outpost_az" {
  description = "AZ where Outpost is anchored."
  type        = string
 
}

variable "flow_log_file_format" {
  description = "(Optional) The format for the flow log. Valid values: `plain-text`, `parquet`."
  type        = string
  
  validation {
    condition = can(regex("^(plain-text|parquet)$",
    var.flow_log_file_format))
    error_message = "ERROR valid values: plain-text, parquet."
  }
}

variable "flow_log_hive_compatible_partitions" {
  description = "(Optional) Indicates whether to use Hive-compatible prefixes for flow logs stored in Amazon S3."
  type        = bool
  
}

variable "flow_log_per_hour_partition" {
  description = "(Optional) Indicates whether to partition the flow log per hour. This reduces the cost and response time for queries."
  type        = bool
  
}







