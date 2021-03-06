
package Paws::AppStream::DescribeImagesResult;
  use Moose;
  has Images => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::Image]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeImagesResult

=head1 ATTRIBUTES


=head2 Images => ArrayRef[L<Paws::AppStream::Image>]

The list of images.


=head2 _request_id => Str


=cut

1;