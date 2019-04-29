
package Paws::WorkSpaces::DeleteTags;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DeleteTagsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DeleteTags - Arguments for method DeleteTags on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTags on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DeleteTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTags.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DeleteTagsResult = $workspaces->DeleteTags(
      ResourceId => 'MyNonEmptyString',
      TagKeys    => [
        'MyNonEmptyString', ...    # min: 1
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DeleteTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The identifier of the WorkSpaces resource. The supported resource types
are WorkSpaces, registered directories, images, custom bundles, and IP
access control groups.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The tag keys.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTags in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

