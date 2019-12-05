package Paws::DataExchange::AssetDetails;
  use Moose;
  has S3SnapshotAsset => (is => 'ro', isa => 'Paws::DataExchange::S3SnapshotAsset');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::AssetDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::AssetDetails object:

  $service_obj->Method(Att1 => { S3SnapshotAsset => $value, ..., S3SnapshotAsset => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::AssetDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->S3SnapshotAsset

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 S3SnapshotAsset => L<Paws::DataExchange::S3SnapshotAsset>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
