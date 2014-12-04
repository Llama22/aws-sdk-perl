
package Paws::EC2::DescribeSecurityGroupsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SecurityGroup]', traits => ['Unwrapped'], xmlname => 'securityGroupInfo');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSecurityGroupsResult

=head1 ATTRIBUTES

=head2 SecurityGroups => ArrayRef[Paws::EC2::SecurityGroup]

  

Information about one or more security groups.











=cut
