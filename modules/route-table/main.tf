

resource "aws_route_table" "route-table" {
  count  = length(var.subnet_ids)
  vpc_id = var.vpc-cloud-id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.internet_gateway_id
  }

  tags = var.tags
}


resource "aws_route_table_association" "route-table-associations" {
  count          = length(var.subnet_ids)
  subnet_id      = var.subnet_ids[count.index]
  route_table_id = aws_route_table.route-table[count.index].id
}

