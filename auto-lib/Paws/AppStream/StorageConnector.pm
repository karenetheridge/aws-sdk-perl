package Paws::AppStream::StorageConnector;
  use Moose;
  has ConnectorType => (is => 'ro', isa => 'Str', required => 1);
  has ResourceIdentifier => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::StorageConnector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::StorageConnector object:

  $service_obj->Method(Att1 => { ConnectorType => $value, ..., ResourceIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::StorageConnector object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectorType

=head1 DESCRIPTION

Contains the parameters for a storage connector.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorType => Str

  The type of storage connector. The possible values include:
HOMEFOLDERS.


=head2 ResourceIdentifier => Str

  The ARN associated with the storage connector.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

