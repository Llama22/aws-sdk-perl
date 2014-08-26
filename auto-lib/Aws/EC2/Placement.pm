package Aws::EC2::Placement {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
  has Tenancy => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'tenancy');
}
1
