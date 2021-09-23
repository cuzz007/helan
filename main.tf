provider "oci" {}

resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "VfoR:eu-amsterdam-1-AD-1"
	compartment_id = "ocid1.tenancy.oc1..aaaaaaaazqpvehb7uowadbfkf5uzsfwgmu6tq3vqgrost6wt7a6i74xovfyq"
	create_vnic_details {
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "ocid1.subnet.oc1.eu-amsterdam-1.aaaaaaaaxvx2abtwprrxvyzoh7w37tdtveueelzykvow77axyw3eo6k6giqq"
	}
	display_name = "instance-20210923-1453"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJaQOYxj1nkyLAMF1RpWU8dUGF4Z7DyGLGvYdWEUV8uixgpIJbcAPhNsAAY59b66DOOjNIlY/8ESO8lZgPevXJHPlJJS5vKlp9aoQZZcS3l9zWT8QZC3eYLZUhgzOY6oXQwBXGDuxaveRpSLVo3HjpQ0QYD4nI7OP2YJPufZglcvMy3vEk2gFzFZ/U28Q2ERpOGszo57OwAlS25ol3ONB6DEwYo4uFyNgupgk4LAB0zl6w0Lz7oOSKEOWBSqFBdIv+j4n7AgpBXydn+Psf44ZhsjV09vq77qNnojaCYieZFBodayPcZh6BwXdOI2jRpiNHUbDy/u05KeJzVrz8XfGX ssh-key-2021-09-23"
	}
	shape = "VM.Standard.A1.Flex"
	shape_config {
		memory_in_gbs = "24"
		ocpus = "4"
	}
	source_details {
		boot_volume_size_in_gbs = "99"
		source_id = "ocid1.image.oc1.eu-amsterdam-1.aaaaaaaa22ksnqcyaeojdztiwgdfg6ev2bawmbe76llj5zllybjjphob6y2a"
		source_type = "image"
	}
}
