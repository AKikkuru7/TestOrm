variable "compartment_ocid" {}

variable "region" {}



provider "oci" {

  region = "${var.region}"

}



resource "oci_core_virtual_network" "vcn2" {

  cidr_block = "10.0.0.0/16"

  dns_label = "vcn1"

  compartment_id = "${var.compartment_ocid}"

  display_name = "vcn1"

}
