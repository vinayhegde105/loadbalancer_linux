module "LB_linux" {
    source = "./terraform"
    business_divsion = var.business_divsion
    environment = var.environment
    
    resource_group_name = var.resource_group_name
    resource_group_location = var.resource_group_location
    
    vnet_name = var.vnet_name
    vnet_address_space = var.vnet_address_space

    web_subnet_name = var.web_subnet_name
    web_subnet_address = var.web_subnet_address

    app_subnet_name = var.app_subnet_name
    app_subnet_address = var.app_subnet_address

    db_subnet_name = var.db_subnet_name
    db_subnet_address = var.db_subnet_address

    bastion_subnet_name = var.bastion_service_subnet_name
    bastion_subnet_address = var.bastion_subnet_address

    bastion_service_subnet_name = var.bastion_service_subnet_name
    bastion_service_address_prefixes = var.bastion_service_address_prefixes
    
    web_linuxvm_instance_count = var.web_linuxvm_instance_count
    lb_inbound_nat_ports = var.lb_inbound_nat_ports

    admin_password = var.admin_password
    sku = var.sku
}