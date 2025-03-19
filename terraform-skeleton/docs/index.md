# ${{ values.vpc_name }}

このComponentは、"Create VPC"テンプレートから作成されたAWS VPCを管理しています。

## VPC情報（Template実行時）
* VPC名: ${{ values.vpc_name }}
* リージョン: ${{ values.aws_region }}
* VPC CIDR: ${{ values.vpc_cidr }}
* パブリックサブネット
  * サブネット1: ${{ values.public_subnet_1 }}
  * サブネット2: ${{ values.public_subnet_2 }}
  * サブネット3: ${{ values.public_subnet_3 }}
* プライベートサブネット
  * サブネット1: ${{ values.private_subnet_1 }}
  * サブネット2: ${{ values.private_subnet_2 }}
  * サブネット3: ${{ values.private_subnet_3 }}
{%- if values.nat_gateway == "single" %}
* NAT Gateway: 1つのNATゲートウェイを構築
{%- endif %}
{%- if values.nat_gateway == "per_az" %}
* NAT Gateway: AZ毎にNATゲートウェイを構築
{%- endif %}
