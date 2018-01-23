resource "aws_security_group" "FrontEnd" {
    name = "FrontEnd"
    tags {
        Name = "FrontEnd"
    }
    description = "Only HTTP connection inbout"
    vpc_id = "${aws_vpc.terraformmain.id}"

    ingress {
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}