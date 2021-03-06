
package Paws::Pinpoint::GetSegmentVersionsResponse;
  use Moose;
  has SegmentsResponse => (is => 'ro', isa => 'Paws::Pinpoint::SegmentsResponse', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetSegmentVersionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SegmentsResponse => L<Paws::Pinpoint::SegmentsResponse>




=head2 _request_id => Str


=cut

