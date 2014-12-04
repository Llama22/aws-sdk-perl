
package Paws::IAM::GetSAMLProvider {
  use Moose;
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSAMLProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetSAMLProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetSAMLProviderResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetSAMLProvider - Arguments for method GetSAMLProvider on Paws::IAM

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSAMLProvider on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method GetSAMLProvider.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to GetSAMLProvider.

As an example:

  $service_obj->GetSAMLProvider(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> SAMLProviderArn => Str

  

The Amazon Resource Name (ARN) of the SAML provider to get information
about.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for GetSAMLProvider in Paws::IAM

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
