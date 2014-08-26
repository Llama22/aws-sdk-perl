package Aws::EC2::ReservedInstancesModificationResult {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');
  has TargetConfiguration => (is => 'ro', isa => 'Aws::EC2::ReservedInstancesConfiguration', traits => ['Unwrapped'], xmlname => 'targetConfiguration');
}
1
