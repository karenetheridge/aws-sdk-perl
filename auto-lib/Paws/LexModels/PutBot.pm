
package Paws::LexModels::PutBot;
  use Moose;
  has AbortStatement => (is => 'ro', isa => 'Paws::LexModels::Statement');
  has Checksum => (is => 'ro', isa => 'Str');
  has ChildDirected => (is => 'ro', isa => 'Bool', required => 1);
  has ClarificationPrompt => (is => 'ro', isa => 'Paws::LexModels::Prompt');
  has Description => (is => 'ro', isa => 'Str');
  has IdleSessionTTLInSeconds => (is => 'ro', isa => 'Int');
  has Intents => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::Intent]');
  has Locale => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name' , required => 1);
  has ProcessBehavior => (is => 'ro', isa => 'Str');
  has VoiceId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{name}/versions/$LATEST');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::PutBotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::PutBot - Arguments for method PutBot on Paws::LexModels

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBot on the 
Amazon Lex Model Building Service service. Use the attributes of this class
as arguments to method PutBot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBot.

As an example:

  $service_obj->PutBot(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AbortStatement => L<Paws::LexModels::Statement>

When Amazon Lex can't understand the user's input in context, it tries
to elicit the information a few times. After that, Amazon Lex sends the
message defined in C<abortStatement> to the user, and then aborts the
conversation. To set the number of retries, use the
C<valueElicitationPrompt> field for the slot type.

For example, in a pizza ordering bot, Amazon Lex might ask a user "What
type of crust would you like?" If the user's response is not one of the
expected responses (for example, "thin crust, "deep dish," etc.),
Amazon Lex tries to elicit a correct response a few more times.

For example, in a pizza ordering application, C<OrderPizza> might be
one of the intents. This intent might require the C<CrustType> slot.
You specify the C<valueElicitationPrompt> field when you create the
C<CrustType> slot.



=head2 Checksum => Str

Identifies a specific revision of the C<$LATEST> version.

When you create a new bot, leave the C<checksum> field blank. If you
specify a checksum you get a C<BadRequestException> exception.

When you want to update a bot, set the C<checksum> field to the
checksum of the most recent revision of the C<$LATEST> version. If you
don't specify the C< checksum> field, or if the checksum does not match
the C<$LATEST> version, you get a C<PreconditionFailedException>
exception.



=head2 B<REQUIRED> ChildDirected => Bool

For each Amazon Lex bot created with the Amazon Lex Model Building
Service, you must specify whether your use of Amazon Lex is related to
a website, program, or other application that is directed or targeted,
in whole or in part, to children under age 13 and subject to the
Children's Online Privacy Protection Act (COPPA) by specifying C<true>
or C<false> in the C<childDirected> field. By specifying C<true> in the
C<childDirected> field, you confirm that your use of Amazon Lex B<is>
related to a website, program, or other application that is directed or
targeted, in whole or in part, to children under age 13 and subject to
COPPA. By specifying C<false> in the C<childDirected> field, you
confirm that your use of Amazon Lex B<is not> related to a website,
program, or other application that is directed or targeted, in whole or
in part, to children under age 13 and subject to COPPA. You may not
specify a default value for the C<childDirected> field that does not
accurately reflect whether your use of Amazon Lex is related to a
website, program, or other application that is directed or targeted, in
whole or in part, to children under age 13 and subject to COPPA.

If your use of Amazon Lex relates to a website, program, or other
application that is directed in whole or in part, to children under age
13, you must obtain any required verifiable parental consent under
COPPA. For information regarding the use of Amazon Lex in connection
with websites, programs, or other applications that are directed or
targeted, in whole or in part, to children under age 13, see the Amazon
Lex FAQ.



=head2 ClarificationPrompt => L<Paws::LexModels::Prompt>

When Amazon Lex doesn't understand the user's intent, it uses this
message to get clarification. To specify how many times Amazon Lex
should repeate the clarification prompt, use the C<maxAttempts> field.
If Amazon Lex still doesn't understand, it sends the message in the
C<abortStatement> field.

When you create a clarification prompt, make sure that it suggests the
correct response from the user. for example, for a bot that orders
pizza and drinks, you might create this clarification prompt: "What
would you like to do? You can say 'Order a pizza' or 'Order a drink.'"



=head2 Description => Str

A description of the bot.



=head2 IdleSessionTTLInSeconds => Int

The maximum time in seconds that Amazon Lex retains the data gathered
in a conversation.

A user interaction session remains active for the amount of time
specified. If no conversation occurs during this time, the session
expires and Amazon Lex deletes any data provided before the timeout.

For example, suppose that a user chooses the OrderPizza intent, but
gets sidetracked halfway through placing an order. If the user doesn't
complete the order within the specified time, Amazon Lex discards the
slot information that it gathered, and the user must start over.

If you don't include the C<idleSessionTTLInSeconds> element in a
C<PutBot> operation request, Amazon Lex uses the default value. This is
also true if the request replaces an existing bot.

The default is 300 seconds (5 minutes).



=head2 Intents => ArrayRef[L<Paws::LexModels::Intent>]

An array of C<Intent> objects. Each intent represents a command that a
user can express. For example, a pizza ordering bot might support an
OrderPizza intent. For more information, see how-it-works.



=head2 B<REQUIRED> Locale => Str

Specifies the target locale for the bot. Any intent used in the bot
must be compatible with the locale of the bot.

The default is C<en-US>.

Valid values are: C<"en-US">

=head2 B<REQUIRED> Name => Str

The name of the bot. The name is I<not> case sensitive.



=head2 ProcessBehavior => Str

If you set the C<processBehavior> element to C<Build>, Amazon Lex
builds the bot so that it can be run. If you set the element to
C<Save>Amazon Lex saves the bot, but doesn't build it.

If you don't specify this value, the default value is C<Save>.

Valid values are: C<"SAVE">, C<"BUILD">

=head2 VoiceId => Str

The Amazon Polly voice ID that you want Amazon Lex to use for voice
interactions with the user. The locale configured for the voice must
match the locale of the bot. For more information, see Available Voices
in the I<Amazon Polly Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBot in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

