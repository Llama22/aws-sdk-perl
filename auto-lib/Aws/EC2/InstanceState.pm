package Aws::EC2::InstanceState {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Code => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'code');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name');
}
1
