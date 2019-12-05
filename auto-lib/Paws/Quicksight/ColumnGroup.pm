package Paws::Quicksight::ColumnGroup;
  use Moose;
  has GeoSpatialColumnGroup => (is => 'ro', isa => 'Paws::Quicksight::GeoSpatialColumnGroup');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ColumnGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::ColumnGroup object:

  $service_obj->Method(Att1 => { GeoSpatialColumnGroup => $value, ..., GeoSpatialColumnGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::ColumnGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->GeoSpatialColumnGroup

=head1 DESCRIPTION

Groupings of columns that work together in certain QuickSight features.
This is a variant type structure. No more than one of the attributes
should be non-null for this structure to be valid.

=head1 ATTRIBUTES


=head2 GeoSpatialColumnGroup => L<Paws::Quicksight::GeoSpatialColumnGroup>

  Geospatial column group that denotes a hierarchy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
