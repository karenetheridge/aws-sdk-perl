
package Paws::RDS::CopyDBSnapshot;
  use Moose;
  has CopyTags => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has PreSignedUrl => (is => 'ro', isa => 'Str');
  has SourceDBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TargetDBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyDBSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CopyDBSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopyDBSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CopyDBSnapshot - Arguments for method CopyDBSnapshot on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyDBSnapshot on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method CopyDBSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyDBSnapshot.

As an example:

  $service_obj->CopyDBSnapshot(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CopyTags => Bool

True to copy all tags from the source DB snapshot to the target DB
snapshot; otherwise false. The default is false.



=head2 KmsKeyId => Str

The AWS KMS key ID for an encrypted DB snapshot. The KMS key ID is the
Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias
for the KMS encryption key.

If you copy an encrypted DB snapshot from your AWS account, you can
specify a value for this parameter to encrypt the copy with a new KMS
encryption key. If you don't specify a value for this parameter, then
the copy of the DB snapshot is encrypted with the same KMS key as the
source DB snapshot.

If you copy an encrypted DB snapshot that is shared from another AWS
account, then you must specify a value for this parameter.

If you specify this parameter when you copy an unencrypted snapshot,
the copy is encrypted.

If you copy an encrypted snapshot to a different AWS region, then you
must specify a KMS key for the destination AWS region. KMS encryption
keys are specific to the region that they are created in, and you
cannot use encryption keys from one region in another region.



=head2 OptionGroupName => Str

The name of an option group to associate with the copy.

Specify this option if you are copying a snapshot from one AWS region
to another, and your DB instance uses a non-default option group. If
your source DB instance uses Transparent Data Encryption for Oracle or
Microsoft SQL Server, you must specify this option when copying across
regions. For more information, see Option Group Considerations.



=head2 PreSignedUrl => Str

The URL that contains a Signature Version 4 signed request for the
C<CopyDBSnapshot> API action in the source AWS region that contains the
source DB snapshot to copy.

You must specify this parameter when you copy an encrypted DB snapshot
from another AWS region by using the Amazon RDS API. You can specify
the source region option instead of this parameter when you copy an
encrypted DB snapshot from another AWS region by using the AWS CLI.

The presigned URL must be a valid request for the C<CopyDBSnapshot> API
action that can be executed in the source region that contains the
encrypted DB snapshot to be copied. The presigned URL request must
contain the following parameter values:

=over

=item *

C<DestinationRegion> - The AWS Region that the encrypted DB snapshot
will be copied to. This region is the same one where the
C<CopyDBSnapshot> action is called that contains this presigned URL.

For example, if you copy an encrypted DB snapshot from the us-west-2
region to the us-east-1 region, then you will call the
C<CopyDBSnapshot> action in the us-east-1 region and provide a
presigned URL that contains a call to the C<CopyDBSnapshot> action in
the us-west-2 region. For this example, the C<DestinationRegion> in the
presigned URL must be set to the us-east-1 region.

=item *

C<KmsKeyId> - The KMS key identifier for the key to use to encrypt the
copy of the DB snapshot in the destination region. This is the same
identifier for both the C<CopyDBSnapshot> action that is called in the
destination region, and the action contained in the presigned URL.

=item *

C<SourceDBSnapshotIdentifier> - The DB snapshot identifier for the
encrypted snapshot to be copied. This identifier must be in the Amazon
Resource Name (ARN) format for the source region. For example, if you
are copying an encrypted DB snapshot from the us-west-2 region, then
your C<SourceDBSnapshotIdentifier> looks like the following example:
C<arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20161115>.

=back

To learn how to generate a Signature Version 4 signed request, see
Authenticating Requests: Using Query Parameters (AWS Signature Version
4) and Signature Version 4 Signing Process.



=head2 B<REQUIRED> SourceDBSnapshotIdentifier => Str

The identifier for the source DB snapshot.

If the source snapshot is in the same region as the copy, specify a
valid DB snapshot identifier. For example,
C<rds:mysql-instance1-snapshot-20130805>.

If the source snapshot is in a different region than the copy, specify
a valid DB snapshot ARN. For example,
C<arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805>.

If you are copying from a shared manual DB snapshot, this parameter
must be the Amazon Resource Name (ARN) of the shared DB snapshot.

If you are copying an encrypted snapshot this parameter must be in the
ARN format for the source region, and must match the
C<SourceDBSnapshotIdentifier> in the C<PreSignedUrl> parameter.

Constraints:

=over

=item *

Must specify a valid system snapshot in the "available" state.

=back

Example: C<rds:mydb-2012-04-02-00-01>

Example:
C<arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805>



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 B<REQUIRED> TargetDBSnapshotIdentifier => Str

The identifier for the copy of the snapshot.

Constraints:

=over

=item *

Cannot be null, empty, or blank

=item *

Must contain from 1 to 255 alphanumeric characters or hyphens

=item *

First character must be a letter

=item *

Cannot end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-db-snapshot>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyDBSnapshot in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

