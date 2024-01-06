resource "aws_instance" "instance1" {
    ami = var.ami_id
    instance_type = var.instance_cpu
    subnet_id = aws_subnet.robo_sub_tf.id
    vpc_security_group_ids = [aws_security_group.robo_sg_tf.id]
     
}