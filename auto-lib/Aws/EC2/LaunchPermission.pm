package Aws::EC2::LaunchPermission {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Group => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str');
}
1
