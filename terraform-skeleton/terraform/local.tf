locals {
  aws_region = "${{ values.aws_region }}"

  vpc = {
    name = "${{ values.vpc_name }}"
    cidr = "${{ values.vpc_cidr }}"

    public_subnets = [
      "${{ values.public_subnet_1 }}",
      "${{ values.public_subnet_2 }}",
      "${{ values.public_subnet_3 }}",
    ]

    private_subnets = [
      "${{ values.private_subnet_1 }}",
      "${{ values.private_subnet_2 }}",
      "${{ values.private_subnet_3 }}",
    ]

    {%- if values.nat_gateway == "single" %}
    single_nat_gateway     = true
    one_nat_gateway_per_az = false
    {%- endif %}
    {%- if values.nat_gateway == "per_az" %}
    single_nat_gateway     = false
    one_nat_gateway_per_az = true
    {%- endif %}


    tags = {
      terraform = "true",
      owner     = "${{ values.owner }}"
    }
  }
}
