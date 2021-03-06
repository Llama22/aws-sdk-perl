
package Paws::Glacier::GetVaultAccessPolicyOutput;
  use Moose;
  has Policy => (is => 'ro', isa => 'Paws::Glacier::VaultAccessPolicy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::GetVaultAccessPolicyOutput

=head1 ATTRIBUTES


=head2 Policy => L<Paws::Glacier::VaultAccessPolicy>

Contains the returned vault access policy as a JSON string.


=head2 _request_id => Str


=cut

