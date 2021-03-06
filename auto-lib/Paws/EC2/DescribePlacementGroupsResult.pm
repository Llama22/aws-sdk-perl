
package Paws::EC2::DescribePlacementGroupsResult;
  use Moose;
  has PlacementGroups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PlacementGroup]', xmlname => 'placementGroupSet', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribePlacementGroupsResult

=head1 ATTRIBUTES


=head2 PlacementGroups => ArrayRef[L<Paws::EC2::PlacementGroup>]

One or more placement groups.


=head2 _request_id => Str


=cut

