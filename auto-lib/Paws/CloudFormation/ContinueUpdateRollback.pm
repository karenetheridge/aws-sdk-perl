
package Paws::CloudFormation::ContinueUpdateRollback;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has ResourcesToSkip => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RoleARN => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ContinueUpdateRollback');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ContinueUpdateRollbackOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ContinueUpdateRollbackResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ContinueUpdateRollback - Arguments for method ContinueUpdateRollback on Paws::CloudFormation

=head1 DESCRIPTION

This class represents the parameters used for calling the method ContinueUpdateRollback on the 
AWS CloudFormation service. Use the attributes of this class
as arguments to method ContinueUpdateRollback.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ContinueUpdateRollback.

As an example:

  $service_obj->ContinueUpdateRollback(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for this C<ContinueUpdateRollback> request. Specify
this token if you plan to retry requests so that AWS CloudFormation
knows that you're not attempting to continue the rollback to a stack
with the same name. You might retry C<ContinueUpdateRollback> requests
to ensure that AWS CloudFormation successfully received them.



=head2 ResourcesToSkip => ArrayRef[Str|Undef]

A list of the logical IDs of the resources that AWS CloudFormation
skips during the continue update rollback operation. You can specify
only resources that are in the C<UPDATE_FAILED> state because a
rollback failed. You can't specify resources that are in the
C<UPDATE_FAILED> state for other reasons, for example, because an
update was canceled. To check why a resource update failed, use the
DescribeStackResources action, and view the resource status reason.

Specify this property to skip rolling back resources that AWS
CloudFormation can't successfully roll back. We recommend that you
troubleshoot resources before skipping them. AWS CloudFormation sets
the status of the specified resources to C<UPDATE_COMPLETE> and
continues to roll back the stack. After the rollback is complete, the
state of the skipped resources will be inconsistent with the state of
the resources in the stack template. Before performing another stack
update, you must update the stack or resources to be consistent with
each other. If you don't, subsequent stack updates might fail, and the
stack will become unrecoverable.

Specify the minimum number of resources required to successfully roll
back your stack. For example, a failed resource update might cause
dependent resources to fail. In this case, it might not be necessary to
skip the dependent resources.

To specify resources in a nested stack, use the following format:
C<NestedStackName.ResourceLogicalID>. If the C<ResourceLogicalID> is a
stack resource (C<Type: AWS::CloudFormation::Stack>), it must be in one
of the following states: C<DELETE_IN_PROGRESS>, C<DELETE_COMPLETE>, or
C<DELETE_FAILED>.



=head2 RoleARN => Str

The Amazon Resource Name (ARN) of an AWS Identity and Access Management
(IAM) role that AWS CloudFormation assumes to roll back the stack. AWS
CloudFormation uses the role's credentials to make calls on your
behalf. AWS CloudFormation always uses this role for all future
operations on the stack. As long as users have permission to operate on
the stack, AWS CloudFormation uses this role even if the users don't
have permission to pass it. Ensure that the role grants least
privilege.

If you don't specify a value, AWS CloudFormation uses the role that was
previously associated with the stack. If no role is available, AWS
CloudFormation uses a temporary session that is generated from your
user credentials.



=head2 B<REQUIRED> StackName => Str

The name or the unique ID of the stack that you want to continue
rolling back.

Don't specify the name of a nested stack (a stack that was created by
using the C<AWS::CloudFormation::Stack> resource). Instead, use this
operation on the parent stack (the stack that contains the
C<AWS::CloudFormation::Stack> resource).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ContinueUpdateRollback in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

