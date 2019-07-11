
package Paws::IoTThingsGraph::CreateSystemTemplate;
  use Moose;
  has CompatibleNamespaceVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'compatibleNamespaceVersion' );
  has Definition => (is => 'ro', isa => 'Paws::IoTThingsGraph::DefinitionDocument', traits => ['NameInRequest'], request_name => 'definition' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSystemTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTThingsGraph::CreateSystemTemplateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::CreateSystemTemplate - Arguments for method CreateSystemTemplate on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSystemTemplate on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method CreateSystemTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSystemTemplate.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $CreateSystemTemplateResponse = $iotthingsgraph->CreateSystemTemplate(
      Definition => {
        Language => 'GRAPHQL',             # values: GRAPHQL
        Text     => 'MyDefinitionText',    # max: 1048576

      },
      CompatibleNamespaceVersion => 1,     # OPTIONAL
    );

    # Results:
    my $Summary = $CreateSystemTemplateResponse->Summary;

    # Returns a L<Paws::IoTThingsGraph::CreateSystemTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/CreateSystemTemplate>

=head1 ATTRIBUTES


=head2 CompatibleNamespaceVersion => Int

The namespace version in which the system is to be created.

If no value is specified, the latest version is used by default.



=head2 B<REQUIRED> Definition => L<Paws::IoTThingsGraph::DefinitionDocument>

The C<DefinitionDocument> used to create the system.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSystemTemplate in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

