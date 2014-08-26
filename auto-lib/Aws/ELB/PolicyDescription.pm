package Aws::ELB::PolicyDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has PolicyAttributeDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyAttributeDescription]');
  has PolicyName => (is => 'ro', isa => 'Str');
  has PolicyTypeName => (is => 'ro', isa => 'Str');
}
1
