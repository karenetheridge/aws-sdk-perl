
package Paws::ServiceCatalog::ExecuteProvisionedProductServiceAction;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has ExecuteToken => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::ServiceCatalog::ExecutionParameterMap');
  has ProvisionedProductId => (is => 'ro', isa => 'Str', required => 1);
  has ServiceActionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteProvisionedProductServiceAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::ExecuteProvisionedProductServiceActionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ExecuteProvisionedProductServiceAction - Arguments for method ExecuteProvisionedProductServiceAction on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteProvisionedProductServiceAction on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method ExecuteProvisionedProductServiceAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteProvisionedProductServiceAction.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $ExecuteProvisionedProductServiceActionOutput =
      $servicecatalog->ExecuteProvisionedProductServiceAction(
      ExecuteToken         => 'MyIdempotencyToken',
      ProvisionedProductId => 'MyId',
      ServiceActionId      => 'MyId',
      AcceptLanguage       => 'MyAcceptLanguage',     # OPTIONAL
      Parameters           => {
        'MyExecutionParameterKey' => [
          'MyExecutionParameterValue', ...            # max: 512
        ],    # key: min: 1, max: 50, value: max: 25
      },    # OPTIONAL
      );

    # Results:
    my $RecordDetail =
      $ExecuteProvisionedProductServiceActionOutput->RecordDetail;

# Returns a L<Paws::ServiceCatalog::ExecuteProvisionedProductServiceActionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/ExecuteProvisionedProductServiceAction>

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<en> - English (default)

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 B<REQUIRED> ExecuteToken => Str

An idempotency token that uniquely identifies the execute request.



=head2 Parameters => L<Paws::ServiceCatalog::ExecutionParameterMap>





=head2 B<REQUIRED> ProvisionedProductId => Str

The identifier of the provisioned product.



=head2 B<REQUIRED> ServiceActionId => Str

The self-service action identifier. For example, C<act-fs7abcd89wxyz>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteProvisionedProductServiceAction in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
