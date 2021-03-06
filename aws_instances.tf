resource "aws_instance" "jenkins_app" {
    ami = "${data.aws_ami.jenkins_app_ami.id}"
    instance_type = "t2.micro"
    associate_public_ip_address = "true"
    subnet_id = "${aws_subnet.PublicSubnet.id}"
    vpc_security_group_ids = ["${aws_security_group.FrontEnd.id}"]
    tags {
        Name = "Jenkins"
    }
}