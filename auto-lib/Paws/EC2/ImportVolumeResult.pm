
package Paws::EC2::ImportVolumeResult;
  use Moose;
  has ConversionTask => (is => 'ro', isa => 'Paws::EC2::ConversionTask', xmlname => 'conversionTask', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportVolumeResult

=head1 ATTRIBUTES


=head2 ConversionTask => L<Paws::EC2::ConversionTask>

Information about the conversion task.


=head2 _request_id => Str


=cut

