package Aws::CloudFormation::Tag {
  use Moose;
  with ('AWS::API::ResultParser');
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}
1
