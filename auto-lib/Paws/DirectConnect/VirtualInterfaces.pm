
package Paws::DirectConnect::VirtualInterfaces;
  use Moose;
  has VirtualInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::VirtualInterface]', traits => ['Unwrapped'], xmlname => 'virtualInterfaces' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::VirtualInterfaces

=head1 ATTRIBUTES


=head2 VirtualInterfaces => ArrayRef[L<Paws::DirectConnect::VirtualInterface>]

A list of virtual interfaces.


=head2 _request_id => Str


=cut

1;