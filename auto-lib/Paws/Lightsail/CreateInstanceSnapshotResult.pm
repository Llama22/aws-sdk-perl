
package Paws::Lightsail::CreateInstanceSnapshotResult;
  use Moose;
  has Operations => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Operation]', traits => ['Unwrapped'], xmlname => 'operations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateInstanceSnapshotResult

=head1 ATTRIBUTES


=head2 Operations => ArrayRef[L<Paws::Lightsail::Operation>]

An array of key-value pairs containing information about the results of
your create instances snapshot request.


=head2 _request_id => Str


=cut

1;