
package Paws::WorkSpaces::RebuildWorkspaces;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has RebuildWorkspaceRequests => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::RebuildRequest]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RebuildWorkspaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::RebuildWorkspacesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::RebuildWorkspaces - Arguments for method RebuildWorkspaces on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RebuildWorkspaces on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method RebuildWorkspaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RebuildWorkspaces.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $RebuildWorkspacesResult = $workspaces->RebuildWorkspaces(
      RebuildWorkspaceRequests => [
        {
          WorkspaceId => 'MyWorkspaceId',

        },
        ...
      ],
      AdditionalInfo => 'MyAdditionalInfo',    # OPTIONAL
    );

    # Results:
    my $FailedRequests = $RebuildWorkspacesResult->FailedRequests;

    # Returns a L<Paws::WorkSpaces::RebuildWorkspacesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/RebuildWorkspaces>

=head1 ATTRIBUTES


=head2 AdditionalInfo => Str

Reserved.



=head2 B<REQUIRED> RebuildWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::RebuildRequest>]

The WorkSpace to rebuild. You can specify a single WorkSpace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RebuildWorkspaces in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

