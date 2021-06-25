#include <tofino/intrinsic_metadata.p4>
#include "tofino/stateful_alu_blackbox.p4"

/* Declare Header */
header_type ethernet_t {
    fields {
        dstAddr : 48;
        srcAddr : 48;
        etherType : 16;
    }
}

header ethernet_t ethernet;

header_type ipv4_t {
    fields {
        // TODO: Have a hard limit on 5 fields for now. Ensure this in the tofino code generator.
        pkt_0 : 32 (signed);
        pkt_1 : 32 (signed);
        pkt_2 : 32 (signed);
        pkt_3 : 32 (signed);
        pkt_4 : 32 (signed);
        pkt_5 : 32 (signed);
        pkt_6 : 32 (signed);
        pkt_7 : 32 (signed);
        pkt_8 : 32 (signed);
        pkt_9 : 32 (signed);
        pkt_10 : 32 (signed);
        pkt_11 : 32 (signed);
        pkt_12 : 32 (signed);
        pkt_13 : 32 (signed);
        pkt_14 : 32 (signed);
        pkt_15 : 32 (signed);
        pkt_16 : 32 (signed);
        pkt_17 : 32 (signed);
        pkt_18 : 32 (signed);
        pkt_19 : 32 (signed);
        pkt_20 : 32 (signed);
        pkt_21 : 32 (signed);
        pkt_22 : 32 (signed);
        pkt_23 : 32 (signed);
        pkt_24 : 32 (signed);
        pkt_25 : 32 (signed);
        pkt_26 : 32 (signed);
        pkt_27 : 32 (signed);
        pkt_28 : 32 (signed);
        pkt_29 : 32 (signed);
        pkt_1_2 : 32 (signed);
        pkt_3_4 : 32 (signed);
        pkt_5_6 : 32 (signed);
        pkt_7_8 : 32 (signed);
        pkt_9_10 : 32 (signed);
        pkt_11_12 : 32 (signed);
        pkt_13_14 : 32 (signed);
        pkt_15_16 : 32 (signed);
        pkt_17_18 : 32 (signed);
    }
}

header ipv4_t ipv4;

/* Declare Parser */
parser start {
	return select(current(96,16)){
		0x0800: parse_ethernet;
	}
}

parser parse_ethernet {
    extract(ethernet);
    return select(latest.etherType) {
        /** Fill Whatever ***/
        0x0800     : parse_ipv4;
        default: ingress;
    }
}
parser parse_ipv4 {
    extract(ipv4);
    return ingress;
}

// TODO: Derive MAX_SIZE from Domino program.
#define MAX_SIZE 10

register reg_0 {
    width : 64;
    instance_count : MAX_SIZE;
    attributes : signed;
}

action action_1 () {
    add(ipv4.pkt_0, ipv4.pkt_0, 1);
}

table table_1 {
    actions {
        action_1;
    }
    default_action: action_1;
}

action action_1_cp () {
    add(ipv4.pkt_0, ipv4.pkt_0, 1);
}

table table_1_cp {
    actions {
        action_1_cp;
    }
    default_action: action_1_cp;
}

action action_2 () {
    add(ipv4.pkt_1, ipv4.pkt_1, 1);
}

table table_2 {
    actions {
        action_2;
    }
    default_action: action_2;
}

action action_3 () {
    add(ipv4.pkt_2, ipv4.pkt_2, 1);
}

table table_3 {
    actions {
        action_3;
    }
    default_action: action_3;
}

action action_4 () {
    add(ipv4.pkt_3, ipv4.pkt_3, 1);
}

table table_4 {
    actions {
        action_4;
    }
    default_action: action_4;
}

action action_5 () {
    add(ipv4.pkt_4, ipv4.pkt_4, 1);
}

table table_5 {
    actions {
        action_5;
    }
    default_action: action_5;
}

action action_6 () {
    add(ipv4.pkt_5, ipv4.pkt_5, 1);
}

table table_6 {
    actions {
        action_6;
    }
    default_action: action_6;
}

action action_7 () {
    add(ipv4.pkt_6, ipv4.pkt_6, 1);
}

table table_7 {
    actions {
        action_7;
    }
    default_action: action_7;
}

action action_8 () {
    add(ipv4.pkt_7, ipv4.pkt_7, 1);
}

table table_8 {
    actions {
        action_8;
    }
    default_action: action_8;
}

action action_9 () {
    add(ipv4.pkt_8, ipv4.pkt_8, 1);
}

table table_9 {
    actions {
        action_9;
    }
    default_action: action_9;
}

action action_10 () {
    add(ipv4.pkt_9, ipv4.pkt_9, 1);
}

table table_10 {
    actions {
        action_10;
    }
    default_action: action_10;
}

action action_11 () {
    add(ipv4.pkt_10, ipv4.pkt_10, 1);
}

table table_11 {
    actions {
        action_11;
    }
    default_action: action_11;
}

action action_12 () {
    add(ipv4.pkt_11, ipv4.pkt_11, 1);
}

table table_12 {
    actions {
        action_12;
    }
    default_action: action_12;
}

action action_13 () {
    add(ipv4.pkt_12, ipv4.pkt_12, 1);
}

table table_13 {
    actions {
        action_13;
    }
    default_action: action_13;
}

action action_14 () {
    add(ipv4.pkt_13, ipv4.pkt_13, 1);
}

table table_14 {
    actions {
        action_14;
    }
    default_action: action_14;
}

action action_15 () {
    add(ipv4.pkt_14, ipv4.pkt_14, 1);
}

table table_15 {
    actions {
        action_15;
    }
    default_action: action_15;
}

action action_16 () {
    add(ipv4.pkt_15, ipv4.pkt_15, 1);
}

table table_16 {
    actions {
        action_16;
    }
    default_action: action_16;
}

action action_17 () {
    add(ipv4.pkt_16, ipv4.pkt_16, 1);
}

table table_17 {
    actions {
        action_17;
    }
    default_action: action_17;
}


action action_18 () {
    add(ipv4.pkt_17, ipv4.pkt_17, 1);
}

table table_18 {
    actions {
        action_18;
    }
    default_action: action_18;
}

action table1_2_act () {
    add(ipv4.pkt_1_2, ipv4.pkt_0, ipv4.pkt_1);
}

table table1_2 {
    actions {
        table1_2_act;
    }
    default_action: table1_2_act;
}

action table3_4_act () {
    add(ipv4.pkt_3_4, ipv4.pkt_2, ipv4.pkt_3);
}

table table3_4 {
    actions {
        table3_4_act;
    }
    default_action: table3_4_act;
}

action table5_6_act () {
    add(ipv4.pkt_5_6, ipv4.pkt_4, ipv4.pkt_5);
}

table table5_6 {
    actions {
        table5_6_act;
    }
    default_action: table5_6_act;
}

action table7_8_act () {
    add(ipv4.pkt_7_8, ipv4.pkt_6, ipv4.pkt_7);
}

table table7_8 {
    actions {
        table7_8_act;
    }
    default_action: table7_8_act;
}

action table9_10_act () {
    add(ipv4.pkt_9_10, ipv4.pkt_8, ipv4.pkt_9);
}

table table9_10 {
    actions {
        table9_10_act;
    }
    default_action: table9_10_act;
}

action table11_12_act () {
    add(ipv4.pkt_11_12, ipv4.pkt_10, ipv4.pkt_11);
}

table table11_12 {
    actions {
        table11_12_act;
    }
    default_action: table11_12_act;
}

action table13_14_act () {
    add(ipv4.pkt_13_14, ipv4.pkt_12, ipv4.pkt_13);
}

table table13_14 {
    actions {
        table13_14_act;
    }
    default_action: table13_14_act;
}

action table15_16_act () {
    add(ipv4.pkt_15_16, ipv4.pkt_14, ipv4.pkt_15);
}

table table15_16 {
    actions {
        table15_16_act;
    }
    default_action: table15_16_act;
}

action table17_18_act () {
    add(ipv4.pkt_17_18, ipv4.pkt_16, ipv4.pkt_17);
}

table table17_18 {
    actions {
        table17_18_act;
    }
    default_action: table17_18_act;
}

action table17_18_cp_act () {
    add(ipv4.pkt_17_18, ipv4.pkt_17_18, 1);
}

table table17_18_cp {
    actions {
        table17_18_cp_act;
    }
    default_action: table17_18_cp_act;
}
// Required: mac_forward table for forwarding to switch CPU.
action set_egr(egress_spec) {
    modify_field(ig_intr_md_for_tm.ucast_egress_port, egress_spec);
}
table mac_forward {
    actions {
        set_egr;
    }
    default_action: set_egr;
}

control ingress {
    apply(table_17);
    apply(table_18);
    apply(table17_18);
    apply(table17_18_cp);

    apply(table_1);
    apply(table_2);
    apply(table1_2);
    apply(table_3);
    apply(table_4);
    apply(table3_4);
    apply(table_5);
    apply(table_6);
    apply(table5_6);
    apply(table_7);
    apply(table_8);
    apply(table7_8);


    apply(table_9);
    apply(table_10);
    apply(table9_10);
    apply(table_11);
    apply(table_12);
    apply(table11_12);
    apply(table_13);
    apply(table_14);
    apply(table13_14);
    apply(table_15);
    apply(table_16);
    apply(table15_16);
    // Call all the required ALUs.
}

control egress {

}
