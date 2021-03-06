package Paws::Greengrass::GroupInformation;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has LatestVersion => (is => 'ro', isa => 'Str');
  has LatestVersionArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GroupInformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::GroupInformation object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::GroupInformation object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information of a group

=head1 ATTRIBUTES


=head2 Arn => Str

  Arn of a group.


=head2 CreationTimestamp => Str

  Timestamp of when the group was created.


=head2 Id => Str

  Id of a group.


=head2 LastUpdatedTimestamp => Str

  Last updated timestamp of the group.


=head2 LatestVersion => Str

  Last version of the group.


=head2 LatestVersionArn => Str

  Latest version arn of the group.


=head2 Name => Str

  Name of a group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

