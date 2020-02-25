
package Paws::DocDB::CreateDBSubnetGroup;
  use Moose;
  has DBSubnetGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has DBSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBSubnetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::CreateDBSubnetGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBSubnetGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::CreateDBSubnetGroup - Arguments for method CreateDBSubnetGroup on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBSubnetGroup on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method CreateDBSubnetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBSubnetGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $CreateDBSubnetGroupResult = $rds->CreateDBSubnetGroup(
      DBSubnetGroupDescription => 'MyString',
      DBSubnetGroupName        => 'MyString',
      SubnetIds                => [ 'MyString', ... ],
      Tags                     => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DBSubnetGroup = $CreateDBSubnetGroupResult->DBSubnetGroup;

    # Returns a L<Paws::DocDB::CreateDBSubnetGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBSubnetGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBSubnetGroupDescription => Str

The description for the subnet group.



=head2 B<REQUIRED> DBSubnetGroupName => Str

The name for the subnet group. This value is stored as a lowercase
string.

Constraints: Must contain no more than 255 letters, numbers, periods,
underscores, spaces, or hyphens. Must not be default.

Example: C<mySubnetgroup>



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The Amazon EC2 subnet IDs for the subnet group.



=head2 Tags => ArrayRef[L<Paws::DocDB::Tag>]

The tags to be assigned to the subnet group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBSubnetGroup in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

