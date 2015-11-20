package Paws::CloudSearch::DoubleOptions;
  use Moose;
  has DefaultValue => (is => 'ro', isa => 'Num');
  has FacetEnabled => (is => 'ro', isa => 'Bool');
  has ReturnEnabled => (is => 'ro', isa => 'Bool');
  has SearchEnabled => (is => 'ro', isa => 'Bool');
  has SortEnabled => (is => 'ro', isa => 'Bool');
  has SourceField => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DoubleOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearch::DoubleOptions object:

  $service_obj->Method(Att1 => { DefaultValue => $value, ..., SourceField => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearch::DoubleOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultValue

=head1 DESCRIPTION

Options for a double-precision 64-bit floating point field. Present if
C<IndexFieldType> specifies the field is of type C<double>. All options
are enabled by default.

=head1 ATTRIBUTES


=head2 DefaultValue => Num

  A value to use for the field if the field isn't specified for a
document. This can be important if you are using the field in an
expression and that field is not present in every document.


=head2 FacetEnabled => Bool

  Whether facet information can be returned for the field.


=head2 ReturnEnabled => Bool

  Whether the contents of the field can be returned in the search
results.


=head2 SearchEnabled => Bool

  Whether the contents of the field are searchable.


=head2 SortEnabled => Bool

  Whether the field can be used to sort the search results.


=head2 SourceField => Str

  The name of the source field to map to the field.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

