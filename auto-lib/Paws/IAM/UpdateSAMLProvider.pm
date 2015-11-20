
package Paws::IAM::UpdateSAMLProvider;
  use Moose;
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str', required => 1);
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSAMLProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::UpdateSAMLProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateSAMLProviderResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UpdateSAMLProvider - Arguments for method UpdateSAMLProvider on Paws::IAM

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSAMLProvider on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method UpdateSAMLProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSAMLProvider.

As an example:

  $service_obj->UpdateSAMLProvider(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SAMLMetadataDocument => Str

  An XML document generated by an identity provider (IdP) that supports
SAML 2.0. The document includes the issuer's name, expiration
information, and keys that can be used to validate the SAML
authentication response (assertions) that are received from the IdP.
You must generate the metadata document using the identity management
software that is used as your organization's IdP.


=head2 B<REQUIRED> SAMLProviderArn => Str

  The Amazon Resource Name (ARN) of the SAML provider to update.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSAMLProvider in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

