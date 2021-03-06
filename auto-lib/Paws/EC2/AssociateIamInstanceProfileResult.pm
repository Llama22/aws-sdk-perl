
package Paws::EC2::AssociateIamInstanceProfileResult;
  use Moose;
  has IamInstanceProfileAssociation => (is => 'ro', isa => 'Paws::EC2::IamInstanceProfileAssociation', xmlname => 'iamInstanceProfileAssociation', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateIamInstanceProfileResult

=head1 ATTRIBUTES


=head2 IamInstanceProfileAssociation => L<Paws::EC2::IamInstanceProfileAssociation>

Information about the IAM instance profile association.


=head2 _request_id => Str


=cut

