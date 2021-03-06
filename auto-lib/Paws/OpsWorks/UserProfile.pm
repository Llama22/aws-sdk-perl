package Paws::OpsWorks::UserProfile;
  use Moose;
  has AllowSelfManagement => (is => 'ro', isa => 'Bool');
  has IamUserArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SshPublicKey => (is => 'ro', isa => 'Str');
  has SshUsername => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::UserProfile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::UserProfile object:

  $service_obj->Method(Att1 => { AllowSelfManagement => $value, ..., SshUsername => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::UserProfile object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowSelfManagement

=head1 DESCRIPTION

Describes a user's SSH information.

=head1 ATTRIBUTES


=head2 AllowSelfManagement => Bool

  Whether users can specify their own SSH public key through the My
Settings page. For more information, see Managing User Permissions.


=head2 IamUserArn => Str

  The user's IAM ARN.


=head2 Name => Str

  The user's name.


=head2 SshPublicKey => Str

  The user's SSH public key.


=head2 SshUsername => Str

  The user's SSH user name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

