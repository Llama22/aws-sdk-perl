
package Paws::Route53Domains::TransferDomain;
  use Moose;
  has AdminContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);
  has AuthCode => (is => 'ro', isa => 'Str');
  has AutoRenew => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has DurationInYears => (is => 'ro', isa => 'Int', required => 1);
  has IdnLangCode => (is => 'ro', isa => 'Str');
  has Nameservers => (is => 'ro', isa => 'ArrayRef[Paws::Route53Domains::Nameserver]');
  has PrivacyProtectAdminContact => (is => 'ro', isa => 'Bool');
  has PrivacyProtectRegistrantContact => (is => 'ro', isa => 'Bool');
  has PrivacyProtectTechContact => (is => 'ro', isa => 'Bool');
  has RegistrantContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);
  has TechContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TransferDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::TransferDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::TransferDomain - Arguments for method TransferDomain on Paws::Route53Domains

=head1 DESCRIPTION

This class represents the parameters used for calling the method TransferDomain on the 
Amazon Route 53 Domains service. Use the attributes of this class
as arguments to method TransferDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TransferDomain.

As an example:

  $service_obj->TransferDomain(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdminContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.

Type: Complex

Children: C<FirstName>, C<MiddleName>, C<LastName>, C<ContactType>,
C<OrganizationName>, C<AddressLine1>, C<AddressLine2>, C<City>,
C<State>, C<CountryCode>, C<ZipCode>, C<PhoneNumber>, C<Email>, C<Fax>,
C<ExtraParams>

Required: Yes



=head2 AuthCode => Str

The authorization code for the domain. You get this value from the
current registrar.

Type: String

Required: Yes



=head2 AutoRenew => Bool

Indicates whether the domain will be automatically renewed (true) or
not (false). Autorenewal only takes effect after the account is
charged.

Type: Boolean

Valid values: C<true> | C<false>

Default: true

Required: No



=head2 B<REQUIRED> DomainName => Str

The name of a domain.

Type: String

Default: None

Constraints: The domain name can contain only the letters a through z,
the numbers 0 through 9, and hyphen (-). Internationalized Domain Names
are not supported.

Required: Yes



=head2 B<REQUIRED> DurationInYears => Int

The number of years the domain will be registered. Domains are
registered for a minimum of one year. The maximum period depends on the
top-level domain.

Type: Integer

Default: 1

Valid values: Integer from 1 to 10

Required: Yes



=head2 IdnLangCode => Str

Reserved for future use.



=head2 Nameservers => ArrayRef[L<Paws::Route53Domains::Nameserver>]

Contains details for the host and glue IP addresses.

Type: Complex

Children: C<GlueIps>, C<Name>

Required: No



=head2 PrivacyProtectAdminContact => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify true, WHOIS ("who is") queries will return contact
information for our registrar partner, Gandi, instead of the contact
information that you enter.

Type: Boolean

Default: C<true>

Valid values: C<true> | C<false>

Required: No



=head2 PrivacyProtectRegistrantContact => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify true, WHOIS ("who is") queries will return contact
information for our registrar partner, Gandi, instead of the contact
information that you enter.

Type: Boolean

Default: C<true>

Valid values: C<true> | C<false>

Required: No



=head2 PrivacyProtectTechContact => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify true, WHOIS ("who is") queries will return contact
information for our registrar partner, Gandi, instead of the contact
information that you enter.

Type: Boolean

Default: C<true>

Valid values: C<true> | C<false>

Required: No



=head2 B<REQUIRED> RegistrantContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.

Type: Complex

Children: C<FirstName>, C<MiddleName>, C<LastName>, C<ContactType>,
C<OrganizationName>, C<AddressLine1>, C<AddressLine2>, C<City>,
C<State>, C<CountryCode>, C<ZipCode>, C<PhoneNumber>, C<Email>, C<Fax>,
C<ExtraParams>

Required: Yes



=head2 B<REQUIRED> TechContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.

Type: Complex

Children: C<FirstName>, C<MiddleName>, C<LastName>, C<ContactType>,
C<OrganizationName>, C<AddressLine1>, C<AddressLine2>, C<City>,
C<State>, C<CountryCode>, C<ZipCode>, C<PhoneNumber>, C<Email>, C<Fax>,
C<ExtraParams>

Required: Yes




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TransferDomain in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

