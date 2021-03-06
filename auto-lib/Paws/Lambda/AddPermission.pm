
package Paws::Lambda::AddPermission;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has EventSourceToken => (is => 'ro', isa => 'Str');
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName' , required => 1);
  has Principal => (is => 'ro', isa => 'Str', required => 1);
  has Qualifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Qualifier' );
  has SourceAccount => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str');
  has StatementId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddPermission');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::AddPermissionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::AddPermission - Arguments for method AddPermission on Paws::Lambda

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddPermission on the 
AWS Lambda service. Use the attributes of this class
as arguments to method AddPermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddPermission.

As an example:

  $service_obj->AddPermission(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

The AWS Lambda action you want to allow in this statement. Each Lambda
action is a string starting with C<lambda:> followed by the API name .
For example, C<lambda:CreateFunction>. You can use wildcard
(C<lambda:*>) to grant permission for all AWS Lambda actions.



=head2 EventSourceToken => Str

A unique token that must be supplied by the principal invoking the
function. This is currently only used for Alexa Smart Home functions.



=head2 B<REQUIRED> FunctionName => Str

Name of the Lambda function whose resource policy you are updating by
adding a new permission.

You can specify a function name (for example, C<Thumbnail>) or you can
specify Amazon Resource Name (ARN) of the function (for example,
C<arn:aws:lambda:us-west-2:account-id:function:ThumbNail>). AWS Lambda
also allows you to specify partial ARN (for example,
C<account-id:Thumbnail>). Note that the length constraint applies only
to the ARN. If you specify only the function name, it is limited to 64
characters in length.



=head2 B<REQUIRED> Principal => Str

The principal who is getting this permission. It can be Amazon S3
service Principal (C<s3.amazonaws.com>) if you want Amazon S3 to invoke
the function, an AWS account ID if you are granting cross-account
permission, or any valid AWS service principal such as
C<sns.amazonaws.com>. For example, you might want to allow a custom
application in another AWS account to push events to AWS Lambda by
invoking your function.



=head2 Qualifier => Str

You can use this optional query parameter to describe a qualified ARN
using a function version or an alias name. The permission will then
apply to the specific qualified ARN. For example, if you specify
function version 2 as the qualifier, then permission applies only when
request is made using qualified function ARN:

C<arn:aws:lambda:aws-region:acct-id:function:function-name:2>

If you specify an alias name, for example C<PROD>, then the permission
is valid only for requests made using the alias ARN:

C<arn:aws:lambda:aws-region:acct-id:function:function-name:PROD>

If the qualifier is not specified, the permission is valid only when
requests is made using unqualified function ARN.

C<arn:aws:lambda:aws-region:acct-id:function:function-name>



=head2 SourceAccount => Str

This parameter is used for S3 and SES. The AWS account ID (without a
hyphen) of the source owner. For example, if the C<SourceArn>
identifies a bucket, then this is the bucket owner's account ID. You
can use this additional condition to ensure the bucket you specify is
owned by a specific account (it is possible the bucket owner deleted
the bucket and some other AWS account created the bucket). You can also
use this condition to specify all sources (that is, you don't specify
the C<SourceArn>) owned by a specific account.



=head2 SourceArn => Str

This is optional; however, when granting permission to invoke your
function, you should specify this field with the Amazon Resource Name
(ARN) as its value. This ensures that only events generated from the
specified source can invoke the function.

If you add a permission without providing the source ARN, any AWS
account that creates a mapping to your function ARN can send events to
invoke your Lambda function.



=head2 B<REQUIRED> StatementId => Str

A unique statement identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddPermission in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

