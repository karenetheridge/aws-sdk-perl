package Paws::SageMaker::LabelingJobOutputConfig;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has S3OutputPath => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::LabelingJobOutputConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::LabelingJobOutputConfig object:

  $service_obj->Method(Att1 => { KmsKeyId => $value, ..., S3OutputPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::LabelingJobOutputConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->KmsKeyId

=head1 DESCRIPTION

Output configuration information for a labeling job.

=head1 ATTRIBUTES


=head2 KmsKeyId => Str

  The AWS Key Management Service ID of the key used to encrypt the output
data, if any.

If you use a KMS key ID or an alias of your master key, the Amazon
SageMaker execution role must include permissions to call
C<kms:Encrypt>. If you don't provide a KMS key ID, Amazon SageMaker
uses the default KMS key for Amazon S3 for your role's account. Amazon
SageMaker uses server-side encryption with KMS-managed keys for
C<LabelingJobOutputConfig>. If you use a bucket policy with an
C<s3:PutObject> permission that only allows objects with server-side
encryption, set the condition key of C<s3:x-amz-server-side-encryption>
to C<"aws:kms">. For more information, see KMS-Managed Encryption Keys
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html)
in the I<Amazon Simple Storage Service Developer Guide.>

The KMS key policy must grant permission to the IAM role that you
specify in your C<CreateLabelingJob> request. For more information, see
Using Key Policies in AWS KMS
(http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 B<REQUIRED> S3OutputPath => Str

  The Amazon S3 location to write output data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

