��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
A
BroadcastArgs
s0"T
s1"T
r0"T"
Ttype0:
2	
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8Μ
�
ActorNetwork/action/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameActorNetwork/action/bias
�
,ActorNetwork/action/bias/Read/ReadVariableOpReadVariableOpActorNetwork/action/bias*
_output_shapes
:*
dtype0
�
ActorNetwork/action/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*+
shared_nameActorNetwork/action/kernel
�
.ActorNetwork/action/kernel/Read/ReadVariableOpReadVariableOpActorNetwork/action/kernel*
_output_shapes
:	�*
dtype0
�
"ActorNetwork/input_mlp/dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"ActorNetwork/input_mlp/dense1/bias
�
6ActorNetwork/input_mlp/dense1/bias/Read/ReadVariableOpReadVariableOp"ActorNetwork/input_mlp/dense1/bias*
_output_shapes	
:�*
dtype0
�
$ActorNetwork/input_mlp/dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$ActorNetwork/input_mlp/dense1/kernel
�
8ActorNetwork/input_mlp/dense1/kernel/Read/ReadVariableOpReadVariableOp$ActorNetwork/input_mlp/dense1/kernel* 
_output_shapes
:
��*
dtype0
�
"ActorNetwork/input_mlp/dense0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"ActorNetwork/input_mlp/dense0/bias
�
6ActorNetwork/input_mlp/dense0/bias/Read/ReadVariableOpReadVariableOp"ActorNetwork/input_mlp/dense0/bias*
_output_shapes	
:�*
dtype0
�
$ActorNetwork/input_mlp/dense0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$ActorNetwork/input_mlp/dense0/kernel
�
8ActorNetwork/input_mlp/dense0/kernel/Read/ReadVariableOpReadVariableOp$ActorNetwork/input_mlp/dense0/kernel* 
_output_shapes
:
��*
dtype0
d
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0	
l
action_0_discountPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������

action_0_observationPlaceholder*+
_output_shapes
:���������Z*
dtype0* 
shape:���������Z
j
action_0_rewardPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
m
action_0_step_typePlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallaction_0_discountaction_0_observationaction_0_rewardaction_0_step_type$ActorNetwork/input_mlp/dense0/kernel"ActorNetwork/input_mlp/dense0/bias$ActorNetwork/input_mlp/dense1/kernel"ActorNetwork/input_mlp/dense1/biasActorNetwork/action/kernelActorNetwork/action/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_signature_wrapper_function_with_signature_13349337
]
get_initial_state_batch_sizePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
PartitionedCallPartitionedCallget_initial_state_batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_signature_wrapper_function_with_signature_13349347
�
PartitionedCall_1PartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_signature_wrapper_function_with_signature_13349365
�
StatefulPartitionedCall_1StatefulPartitionedCallVariable*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_signature_wrapper_function_with_signature_13349360

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�

train_step
metadata
model_variables
_all_assets

action
distribution
get_initial_state
get_metadata
	get_train_step


signatures*
GA
VARIABLE_VALUEVariable%train_step/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

_actor_network*

trace_0
trace_1* 

trace_0* 

trace_0* 
* 
* 
K

action
get_initial_state
get_train_step
get_metadata* 
jd
VARIABLE_VALUE$ActorNetwork/input_mlp/dense0/kernel,model_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE"ActorNetwork/input_mlp/dense0/bias,model_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE$ActorNetwork/input_mlp/dense1/kernel,model_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE"ActorNetwork/input_mlp/dense1/bias,model_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEActorNetwork/action/kernel,model_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEActorNetwork/action/bias,model_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 _mlp_layers*
* 
* 
* 
* 
* 
* 
* 
* 
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
* 
�
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
 
&0
'1
(2
)3*
* 
 
&0
'1
(2
)3*
* 
* 
* 
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

kernel
bias*
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

kernel
bias*
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

kernel
bias*
* 
* 
* 
�
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 
* 
* 

0
1*

0
1*
* 
�
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*
* 
* 

0
1*

0
1*
* 
�
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*
* 
* 

0
1*

0
1*
* 
�
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable$ActorNetwork/input_mlp/dense0/kernel"ActorNetwork/input_mlp/dense0/bias$ActorNetwork/input_mlp/dense1/kernel"ActorNetwork/input_mlp/dense1/biasActorNetwork/action/kernelActorNetwork/action/biasConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_save_13349612
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable$ActorNetwork/input_mlp/dense0/kernel"ActorNetwork/input_mlp/dense0/bias$ActorNetwork/input_mlp/dense1/kernel"ActorNetwork/input_mlp/dense1/biasActorNetwork/action/kernelActorNetwork/action/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference__traced_restore_13349642��
�E
�
!__inference__traced_save_13349612
file_prefix)
read_disablecopyonread_variable:	 Q
=read_1_disablecopyonread_actornetwork_input_mlp_dense0_kernel:
��J
;read_2_disablecopyonread_actornetwork_input_mlp_dense0_bias:	�Q
=read_3_disablecopyonread_actornetwork_input_mlp_dense1_kernel:
��J
;read_4_disablecopyonread_actornetwork_input_mlp_dense1_bias:	�F
3read_5_disablecopyonread_actornetwork_action_kernel:	�?
1read_6_disablecopyonread_actornetwork_action_bias:
savev2_const
identity_15��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: q
Read/DisableCopyOnReadDisableCopyOnReadread_disablecopyonread_variable"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOpread_disablecopyonread_variable^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	a
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: Y

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0	*
_output_shapes
: �
Read_1/DisableCopyOnReadDisableCopyOnRead=read_1_disablecopyonread_actornetwork_input_mlp_dense0_kernel"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp=read_1_disablecopyonread_actornetwork_input_mlp_dense0_kernel^Read_1/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0o

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��e

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_2/DisableCopyOnReadDisableCopyOnRead;read_2_disablecopyonread_actornetwork_input_mlp_dense0_bias"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp;read_2_disablecopyonread_actornetwork_input_mlp_dense0_bias^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_3/DisableCopyOnReadDisableCopyOnRead=read_3_disablecopyonread_actornetwork_input_mlp_dense1_kernel"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp=read_3_disablecopyonread_actornetwork_input_mlp_dense1_kernel^Read_3/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0o

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��e

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_4/DisableCopyOnReadDisableCopyOnRead;read_4_disablecopyonread_actornetwork_input_mlp_dense1_bias"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp;read_4_disablecopyonread_actornetwork_input_mlp_dense1_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_5/DisableCopyOnReadDisableCopyOnRead3read_5_disablecopyonread_actornetwork_action_kernel"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp3read_5_disablecopyonread_actornetwork_action_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0o
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_6/DisableCopyOnReadDisableCopyOnRead1read_6_disablecopyonread_actornetwork_action_bias"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp1read_6_disablecopyonread_actornetwork_action_bias^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH}
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes

2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_14Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_15IdentityIdentity_14:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp*
_output_shapes
 "#
identity_15Identity_15:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:84
2
_user_specified_nameActorNetwork/action/bias::6
4
_user_specified_nameActorNetwork/action/kernel:B>
<
_user_specified_name$"ActorNetwork/input_mlp/dense1/bias:D@
>
_user_specified_name&$ActorNetwork/input_mlp/dense1/kernel:B>
<
_user_specified_name$"ActorNetwork/input_mlp/dense0/bias:D@
>
_user_specified_name&$ActorNetwork/input_mlp/dense0/kernel:($
"
_user_specified_name
Variable:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�R
�
*__inference_polymorphic_action_fn_13349432
	step_type

reward
discount
observationP
<actornetwork_input_mlp_dense0_matmul_readvariableop_resource:
��L
=actornetwork_input_mlp_dense0_biasadd_readvariableop_resource:	�P
<actornetwork_input_mlp_dense1_matmul_readvariableop_resource:
��L
=actornetwork_input_mlp_dense1_biasadd_readvariableop_resource:	�E
2actornetwork_action_matmul_readvariableop_resource:	�A
3actornetwork_action_biasadd_readvariableop_resource:
identity��*ActorNetwork/action/BiasAdd/ReadVariableOp�)ActorNetwork/action/MatMul/ReadVariableOp�4ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp�3ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp�4ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp�3ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOpk
ActorNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
ActorNetwork/flatten/ReshapeReshapeobservation#ActorNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:�����������
3ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOpReadVariableOp<actornetwork_input_mlp_dense0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
$ActorNetwork/input_mlp/dense0/MatMulMatMul%ActorNetwork/flatten/Reshape:output:0;ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOpReadVariableOp=actornetwork_input_mlp_dense0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%ActorNetwork/input_mlp/dense0/BiasAddBiasAdd.ActorNetwork/input_mlp/dense0/MatMul:product:0<ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"ActorNetwork/input_mlp/dense0/ReluRelu.ActorNetwork/input_mlp/dense0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
3ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOpReadVariableOp<actornetwork_input_mlp_dense1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
$ActorNetwork/input_mlp/dense1/MatMulMatMul0ActorNetwork/input_mlp/dense0/Relu:activations:0;ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOpReadVariableOp=actornetwork_input_mlp_dense1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%ActorNetwork/input_mlp/dense1/BiasAddBiasAdd.ActorNetwork/input_mlp/dense1/MatMul:product:0<ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"ActorNetwork/input_mlp/dense1/ReluRelu.ActorNetwork/input_mlp/dense1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
)ActorNetwork/action/MatMul/ReadVariableOpReadVariableOp2actornetwork_action_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
ActorNetwork/action/MatMulMatMul0ActorNetwork/input_mlp/dense1/Relu:activations:01ActorNetwork/action/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*ActorNetwork/action/BiasAdd/ReadVariableOpReadVariableOp3actornetwork_action_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
ActorNetwork/action/BiasAddBiasAdd$ActorNetwork/action/MatMul:product:02ActorNetwork/action/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
ActorNetwork/action/TanhTanh$ActorNetwork/action/BiasAdd:output:0*
T0*'
_output_shapes
:���������k
ActorNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
ActorNetwork/ReshapeReshapeActorNetwork/action/Tanh:y:0#ActorNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:���������W
ActorNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
ActorNetwork/mulMulActorNetwork/mul/x:output:0ActorNetwork/Reshape:output:0*
T0*'
_output_shapes
:���������W
ActorNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?~
ActorNetwork/addAddV2ActorNetwork/add/x:output:0ActorNetwork/mul:z:0*
T0*'
_output_shapes
:���������W
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    W
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB l
Deterministic/sample/ShapeShapeActorNetwork/add:z:0*
T0*
_output_shapes
::��\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
 Deterministic/sample/BroadcastToBroadcastToActorNetwork/add:z:0$Deterministic/sample/concat:output:0*
T0*+
_output_shapes
:���������e
"Deterministic/sample/Shape_1/ConstConst*
_output_shapes
: *
dtype0*
valueB f
Deterministic/sample/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: �
Deterministic/sample/Shape_2Shape)Deterministic/sample/BroadcastTo:output:0*
T0*
_output_shapes
::��t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_2:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0*'
_output_shapes
:���������\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentityclip_by_value:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp+^ActorNetwork/action/BiasAdd/ReadVariableOp*^ActorNetwork/action/MatMul/ReadVariableOp5^ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp4^ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp5^ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp4^ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������:���������:���������:���������Z: : : : : : 2X
*ActorNetwork/action/BiasAdd/ReadVariableOp*ActorNetwork/action/BiasAdd/ReadVariableOp2V
)ActorNetwork/action/MatMul/ReadVariableOp)ActorNetwork/action/MatMul/ReadVariableOp2l
4ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp4ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp2j
3ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp3ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp2l
4ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp4ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp2j
3ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOp3ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:XT
+
_output_shapes
:���������Z
%
_user_specified_nameobservation:MI
#
_output_shapes
:���������
"
_user_specified_name
discount:KG
#
_output_shapes
:���������
 
_user_specified_namereward:N J
#
_output_shapes
:���������
#
_user_specified_name	step_type
�
�
>__inference_signature_wrapper_function_with_signature_13349337
discount
observation

reward
	step_type
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *5
f0R.
,__inference_function_with_signature_13349316o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������:���������Z:���������:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:(	$
"
_user_specified_name
13349333:($
"
_user_specified_name
13349331:($
"
_user_specified_name
13349329:($
"
_user_specified_name
13349327:($
"
_user_specified_name
13349325:($
"
_user_specified_name
13349323:PL
#
_output_shapes
:���������
%
_user_specified_name0/step_type:MI
#
_output_shapes
:���������
"
_user_specified_name
0/reward:ZV
+
_output_shapes
:���������Z
'
_user_specified_name0/observation:O K
#
_output_shapes
:���������
$
_user_specified_name
0/discount
^

__inference_<lambda>_13349122*(
_construction_contextkEagerRuntime*
_input_shapes 
�
�
,__inference_function_with_signature_13349316
	step_type

reward
discount
observation
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *3
f.R,
*__inference_polymorphic_action_fn_13349301o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������:���������:���������:���������Z: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:(	$
"
_user_specified_name
13349312:($
"
_user_specified_name
13349310:($
"
_user_specified_name
13349308:($
"
_user_specified_name
13349306:($
"
_user_specified_name
13349304:($
"
_user_specified_name
13349302:ZV
+
_output_shapes
:���������Z
'
_user_specified_name0/observation:OK
#
_output_shapes
:���������
$
_user_specified_name
0/discount:MI
#
_output_shapes
:���������
"
_user_specified_name
0/reward:P L
#
_output_shapes
:���������
%
_user_specified_name0/step_type
�R
�
*__inference_polymorphic_action_fn_13349301
	time_step
time_step_1
time_step_2
time_step_3P
<actornetwork_input_mlp_dense0_matmul_readvariableop_resource:
��L
=actornetwork_input_mlp_dense0_biasadd_readvariableop_resource:	�P
<actornetwork_input_mlp_dense1_matmul_readvariableop_resource:
��L
=actornetwork_input_mlp_dense1_biasadd_readvariableop_resource:	�E
2actornetwork_action_matmul_readvariableop_resource:	�A
3actornetwork_action_biasadd_readvariableop_resource:
identity��*ActorNetwork/action/BiasAdd/ReadVariableOp�)ActorNetwork/action/MatMul/ReadVariableOp�4ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp�3ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp�4ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp�3ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOpk
ActorNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
ActorNetwork/flatten/ReshapeReshapetime_step_3#ActorNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:�����������
3ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOpReadVariableOp<actornetwork_input_mlp_dense0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
$ActorNetwork/input_mlp/dense0/MatMulMatMul%ActorNetwork/flatten/Reshape:output:0;ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOpReadVariableOp=actornetwork_input_mlp_dense0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%ActorNetwork/input_mlp/dense0/BiasAddBiasAdd.ActorNetwork/input_mlp/dense0/MatMul:product:0<ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"ActorNetwork/input_mlp/dense0/ReluRelu.ActorNetwork/input_mlp/dense0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
3ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOpReadVariableOp<actornetwork_input_mlp_dense1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
$ActorNetwork/input_mlp/dense1/MatMulMatMul0ActorNetwork/input_mlp/dense0/Relu:activations:0;ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOpReadVariableOp=actornetwork_input_mlp_dense1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%ActorNetwork/input_mlp/dense1/BiasAddBiasAdd.ActorNetwork/input_mlp/dense1/MatMul:product:0<ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"ActorNetwork/input_mlp/dense1/ReluRelu.ActorNetwork/input_mlp/dense1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
)ActorNetwork/action/MatMul/ReadVariableOpReadVariableOp2actornetwork_action_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
ActorNetwork/action/MatMulMatMul0ActorNetwork/input_mlp/dense1/Relu:activations:01ActorNetwork/action/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*ActorNetwork/action/BiasAdd/ReadVariableOpReadVariableOp3actornetwork_action_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
ActorNetwork/action/BiasAddBiasAdd$ActorNetwork/action/MatMul:product:02ActorNetwork/action/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
ActorNetwork/action/TanhTanh$ActorNetwork/action/BiasAdd:output:0*
T0*'
_output_shapes
:���������k
ActorNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
ActorNetwork/ReshapeReshapeActorNetwork/action/Tanh:y:0#ActorNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:���������W
ActorNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
ActorNetwork/mulMulActorNetwork/mul/x:output:0ActorNetwork/Reshape:output:0*
T0*'
_output_shapes
:���������W
ActorNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?~
ActorNetwork/addAddV2ActorNetwork/add/x:output:0ActorNetwork/mul:z:0*
T0*'
_output_shapes
:���������W
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    W
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB l
Deterministic/sample/ShapeShapeActorNetwork/add:z:0*
T0*
_output_shapes
::��\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
 Deterministic/sample/BroadcastToBroadcastToActorNetwork/add:z:0$Deterministic/sample/concat:output:0*
T0*+
_output_shapes
:���������e
"Deterministic/sample/Shape_1/ConstConst*
_output_shapes
: *
dtype0*
valueB f
Deterministic/sample/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: �
Deterministic/sample/Shape_2Shape)Deterministic/sample/BroadcastTo:output:0*
T0*
_output_shapes
::��t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_2:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0*'
_output_shapes
:���������\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentityclip_by_value:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp+^ActorNetwork/action/BiasAdd/ReadVariableOp*^ActorNetwork/action/MatMul/ReadVariableOp5^ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp4^ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp5^ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp4^ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������:���������:���������:���������Z: : : : : : 2X
*ActorNetwork/action/BiasAdd/ReadVariableOp*ActorNetwork/action/BiasAdd/ReadVariableOp2V
)ActorNetwork/action/MatMul/ReadVariableOp)ActorNetwork/action/MatMul/ReadVariableOp2l
4ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp4ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp2j
3ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp3ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp2l
4ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp4ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp2j
3ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOp3ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:VR
+
_output_shapes
:���������Z
#
_user_specified_name	time_step:NJ
#
_output_shapes
:���������
#
_user_specified_name	time_step:NJ
#
_output_shapes
:���������
#
_user_specified_name	time_step:N J
#
_output_shapes
:���������
#
_user_specified_name	time_step
�4
�
0__inference_polymorphic_distribution_fn_13349539
	step_type

reward
discount
observationP
<actornetwork_input_mlp_dense0_matmul_readvariableop_resource:
��L
=actornetwork_input_mlp_dense0_biasadd_readvariableop_resource:	�P
<actornetwork_input_mlp_dense1_matmul_readvariableop_resource:
��L
=actornetwork_input_mlp_dense1_biasadd_readvariableop_resource:	�E
2actornetwork_action_matmul_readvariableop_resource:	�A
3actornetwork_action_biasadd_readvariableop_resource:
identity

identity_1

identity_2��*ActorNetwork/action/BiasAdd/ReadVariableOp�)ActorNetwork/action/MatMul/ReadVariableOp�4ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp�3ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp�4ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp�3ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOpk
ActorNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
ActorNetwork/flatten/ReshapeReshapeobservation#ActorNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:�����������
3ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOpReadVariableOp<actornetwork_input_mlp_dense0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
$ActorNetwork/input_mlp/dense0/MatMulMatMul%ActorNetwork/flatten/Reshape:output:0;ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOpReadVariableOp=actornetwork_input_mlp_dense0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%ActorNetwork/input_mlp/dense0/BiasAddBiasAdd.ActorNetwork/input_mlp/dense0/MatMul:product:0<ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"ActorNetwork/input_mlp/dense0/ReluRelu.ActorNetwork/input_mlp/dense0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
3ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOpReadVariableOp<actornetwork_input_mlp_dense1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
$ActorNetwork/input_mlp/dense1/MatMulMatMul0ActorNetwork/input_mlp/dense0/Relu:activations:0;ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOpReadVariableOp=actornetwork_input_mlp_dense1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%ActorNetwork/input_mlp/dense1/BiasAddBiasAdd.ActorNetwork/input_mlp/dense1/MatMul:product:0<ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"ActorNetwork/input_mlp/dense1/ReluRelu.ActorNetwork/input_mlp/dense1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
)ActorNetwork/action/MatMul/ReadVariableOpReadVariableOp2actornetwork_action_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
ActorNetwork/action/MatMulMatMul0ActorNetwork/input_mlp/dense1/Relu:activations:01ActorNetwork/action/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*ActorNetwork/action/BiasAdd/ReadVariableOpReadVariableOp3actornetwork_action_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
ActorNetwork/action/BiasAddBiasAdd$ActorNetwork/action/MatMul:product:02ActorNetwork/action/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
ActorNetwork/action/TanhTanh$ActorNetwork/action/BiasAdd:output:0*
T0*'
_output_shapes
:���������k
ActorNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
ActorNetwork/ReshapeReshapeActorNetwork/action/Tanh:y:0#ActorNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:���������W
ActorNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
ActorNetwork/mulMulActorNetwork/mul/x:output:0ActorNetwork/Reshape:output:0*
T0*'
_output_shapes
:���������W
ActorNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?~
ActorNetwork/addAddV2ActorNetwork/add/x:output:0ActorNetwork/mul:z:0*
T0*'
_output_shapes
:���������W
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    W
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
IdentityIdentityDeterministic/atol:output:0^NoOp*
T0*
_output_shapes
: e

Identity_1IdentityActorNetwork/add:z:0^NoOp*
T0*'
_output_shapes
:���������[

Identity_2IdentityDeterministic/rtol:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp+^ActorNetwork/action/BiasAdd/ReadVariableOp*^ActorNetwork/action/MatMul/ReadVariableOp5^ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp4^ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp5^ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp4^ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������:���������:���������:���������Z: : : : : : 2X
*ActorNetwork/action/BiasAdd/ReadVariableOp*ActorNetwork/action/BiasAdd/ReadVariableOp2V
)ActorNetwork/action/MatMul/ReadVariableOp)ActorNetwork/action/MatMul/ReadVariableOp2l
4ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp4ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp2j
3ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp3ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp2l
4ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp4ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp2j
3ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOp3ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:XT
+
_output_shapes
:���������Z
%
_user_specified_nameobservation:MI
#
_output_shapes
:���������
"
_user_specified_name
discount:KG
#
_output_shapes
:���������
 
_user_specified_namereward:N J
#
_output_shapes
:���������
#
_user_specified_name	step_type
�'
�
$__inference__traced_restore_13349642
file_prefix#
assignvariableop_variable:	 K
7assignvariableop_1_actornetwork_input_mlp_dense0_kernel:
��D
5assignvariableop_2_actornetwork_input_mlp_dense0_bias:	�K
7assignvariableop_3_actornetwork_input_mlp_dense1_kernel:
��D
5assignvariableop_4_actornetwork_input_mlp_dense1_bias:	�@
-assignvariableop_5_actornetwork_action_kernel:	�9
+assignvariableop_6_actornetwork_action_bias:

identity_8��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*4
_output_shapes"
 ::::::::*
dtypes

2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp7assignvariableop_1_actornetwork_input_mlp_dense0_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp5assignvariableop_2_actornetwork_input_mlp_dense0_biasIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp7assignvariableop_3_actornetwork_input_mlp_dense1_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp5assignvariableop_4_actornetwork_input_mlp_dense1_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp-assignvariableop_5_actornetwork_action_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp+assignvariableop_6_actornetwork_action_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_7Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_8IdentityIdentity_7:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6*
_output_shapes
 "!

identity_8Identity_8:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: : : : : : : : 2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62$
AssignVariableOpAssignVariableOp:84
2
_user_specified_nameActorNetwork/action/bias::6
4
_user_specified_nameActorNetwork/action/kernel:B>
<
_user_specified_name$"ActorNetwork/input_mlp/dense1/bias:D@
>
_user_specified_name&$ActorNetwork/input_mlp/dense1/kernel:B>
<
_user_specified_name$"ActorNetwork/input_mlp/dense0/bias:D@
>
_user_specified_name&$ActorNetwork/input_mlp/dense0/kernel:($
"
_user_specified_name
Variable:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
@
>__inference_signature_wrapper_function_with_signature_13349365�
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *5
f0R.
,__inference_function_with_signature_13349362*(
_construction_contextkEagerRuntime*
_input_shapes 
�
~
>__inference_signature_wrapper_function_with_signature_13349360
unknown:	 
identity	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *5
f0R.
,__inference_function_with_signature_13349353^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall:( $
"
_user_specified_name
13349356
�
l
,__inference_function_with_signature_13349353
unknown:	 
identity	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *&
f!R
__inference_<lambda>_13349120^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall:( $
"
_user_specified_name
13349349
�
P
>__inference_signature_wrapper_function_with_signature_13349347

batch_size�
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *5
f0R.
,__inference_function_with_signature_13349343*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�S
�
*__inference_polymorphic_action_fn_13349499
time_step_step_type
time_step_reward
time_step_discount
time_step_observationP
<actornetwork_input_mlp_dense0_matmul_readvariableop_resource:
��L
=actornetwork_input_mlp_dense0_biasadd_readvariableop_resource:	�P
<actornetwork_input_mlp_dense1_matmul_readvariableop_resource:
��L
=actornetwork_input_mlp_dense1_biasadd_readvariableop_resource:	�E
2actornetwork_action_matmul_readvariableop_resource:	�A
3actornetwork_action_biasadd_readvariableop_resource:
identity��*ActorNetwork/action/BiasAdd/ReadVariableOp�)ActorNetwork/action/MatMul/ReadVariableOp�4ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp�3ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp�4ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp�3ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOpk
ActorNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
ActorNetwork/flatten/ReshapeReshapetime_step_observation#ActorNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:�����������
3ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOpReadVariableOp<actornetwork_input_mlp_dense0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
$ActorNetwork/input_mlp/dense0/MatMulMatMul%ActorNetwork/flatten/Reshape:output:0;ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOpReadVariableOp=actornetwork_input_mlp_dense0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%ActorNetwork/input_mlp/dense0/BiasAddBiasAdd.ActorNetwork/input_mlp/dense0/MatMul:product:0<ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"ActorNetwork/input_mlp/dense0/ReluRelu.ActorNetwork/input_mlp/dense0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
3ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOpReadVariableOp<actornetwork_input_mlp_dense1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
$ActorNetwork/input_mlp/dense1/MatMulMatMul0ActorNetwork/input_mlp/dense0/Relu:activations:0;ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOpReadVariableOp=actornetwork_input_mlp_dense1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%ActorNetwork/input_mlp/dense1/BiasAddBiasAdd.ActorNetwork/input_mlp/dense1/MatMul:product:0<ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"ActorNetwork/input_mlp/dense1/ReluRelu.ActorNetwork/input_mlp/dense1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
)ActorNetwork/action/MatMul/ReadVariableOpReadVariableOp2actornetwork_action_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
ActorNetwork/action/MatMulMatMul0ActorNetwork/input_mlp/dense1/Relu:activations:01ActorNetwork/action/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*ActorNetwork/action/BiasAdd/ReadVariableOpReadVariableOp3actornetwork_action_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
ActorNetwork/action/BiasAddBiasAdd$ActorNetwork/action/MatMul:product:02ActorNetwork/action/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
ActorNetwork/action/TanhTanh$ActorNetwork/action/BiasAdd:output:0*
T0*'
_output_shapes
:���������k
ActorNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
ActorNetwork/ReshapeReshapeActorNetwork/action/Tanh:y:0#ActorNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:���������W
ActorNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
ActorNetwork/mulMulActorNetwork/mul/x:output:0ActorNetwork/Reshape:output:0*
T0*'
_output_shapes
:���������W
ActorNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?~
ActorNetwork/addAddV2ActorNetwork/add/x:output:0ActorNetwork/mul:z:0*
T0*'
_output_shapes
:���������W
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    W
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB l
Deterministic/sample/ShapeShapeActorNetwork/add:z:0*
T0*
_output_shapes
::��\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
 Deterministic/sample/BroadcastToBroadcastToActorNetwork/add:z:0$Deterministic/sample/concat:output:0*
T0*+
_output_shapes
:���������e
"Deterministic/sample/Shape_1/ConstConst*
_output_shapes
: *
dtype0*
valueB f
Deterministic/sample/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: �
Deterministic/sample/Shape_2Shape)Deterministic/sample/BroadcastTo:output:0*
T0*
_output_shapes
::��t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_2:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0*'
_output_shapes
:���������\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentityclip_by_value:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp+^ActorNetwork/action/BiasAdd/ReadVariableOp*^ActorNetwork/action/MatMul/ReadVariableOp5^ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp4^ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp5^ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp4^ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������:���������:���������:���������Z: : : : : : 2X
*ActorNetwork/action/BiasAdd/ReadVariableOp*ActorNetwork/action/BiasAdd/ReadVariableOp2V
)ActorNetwork/action/MatMul/ReadVariableOp)ActorNetwork/action/MatMul/ReadVariableOp2l
4ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp4ActorNetwork/input_mlp/dense0/BiasAdd/ReadVariableOp2j
3ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp3ActorNetwork/input_mlp/dense0/MatMul/ReadVariableOp2l
4ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp4ActorNetwork/input_mlp/dense1/BiasAdd/ReadVariableOp2j
3ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOp3ActorNetwork/input_mlp/dense1/MatMul/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:b^
+
_output_shapes
:���������Z
/
_user_specified_nametime_step_observation:WS
#
_output_shapes
:���������
,
_user_specified_nametime_step_discount:UQ
#
_output_shapes
:���������
*
_user_specified_nametime_step_reward:X T
#
_output_shapes
:���������
-
_user_specified_nametime_step_step_type
�
d
__inference_<lambda>_13349120!
readvariableop_resource:	 
identity	��ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	T
IdentityIdentityReadVariableOp:value:0^NoOp*
T0	*
_output_shapes
: 3
NoOpNoOp^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2 
ReadVariableOpReadVariableOp:( $
"
_user_specified_name
resource
�
.
,__inference_function_with_signature_13349362�
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *&
f!R
__inference_<lambda>_13349122*(
_construction_contextkEagerRuntime*
_input_shapes 
�
8
&__inference_get_initial_state_13349542

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�
8
&__inference_get_initial_state_13349342

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�
>
,__inference_function_with_signature_13349343

batch_size�
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_get_initial_state_13349342*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
action�
4

0/discount&
action_0_discount:0���������
B
0/observation1
action_0_observation:0���������Z
0
0/reward$
action_0_reward:0���������
6
0/step_type'
action_0_step_type:0���������:
action0
StatefulPartitionedCall:0���������tensorflow/serving/predict*e
get_initial_stateP
2

batch_size$
get_initial_state_batch_size:0 tensorflow/serving/predict*,
get_metadatatensorflow/serving/predict*Z
get_train_stepH*
int64!
StatefulPartitionedCall_1:0	 tensorflow/serving/predict:�^
�

train_step
metadata
model_variables
_all_assets

action
distribution
get_initial_state
get_metadata
	get_train_step


signatures"
_generic_user_object
:	 (2Variable
 "
trackable_dict_wrapper
K
0
1
2
3
4
5"
trackable_tuple_wrapper
4
_actor_network"
trackable_dict_wrapper
�
trace_0
trace_12�
*__inference_polymorphic_action_fn_13349432
*__inference_polymorphic_action_fn_13349499�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults�
� 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1
�
trace_02�
0__inference_polymorphic_distribution_fn_13349539�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults�
� 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
�
trace_02�
&__inference_get_initial_state_13349542�
���
FullArgSpec
args�
j
batch_size
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
�B�
__inference_<lambda>_13349122"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_<lambda>_13349120"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
`

action
get_initial_state
get_train_step
get_metadata"
signature_map
8:6
��2$ActorNetwork/input_mlp/dense0/kernel
1:/�2"ActorNetwork/input_mlp/dense0/bias
8:6
��2$ActorNetwork/input_mlp/dense1/kernel
1:/�2"ActorNetwork/input_mlp/dense1/bias
-:+	�2ActorNetwork/action/kernel
&:$2ActorNetwork/action/bias
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 _mlp_layers"
_tf_keras_layer
�B�
*__inference_polymorphic_action_fn_13349432	step_typerewarddiscountobservation"�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_polymorphic_action_fn_13349499time_step_step_typetime_step_rewardtime_step_discounttime_step_observation"�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
0__inference_polymorphic_distribution_fn_13349539	step_typerewarddiscountobservation"�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_get_initial_state_13349542
batch_size"�
���
FullArgSpec
args�
j
batch_size
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_signature_wrapper_function_with_signature_13349337
0/discount0/observation0/reward0/step_type"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 [

kwonlyargsM�J
jarg_0_discount
jarg_0_observation
jarg_0_reward
jarg_0_step_type
kwonlydefaults
 
annotations� *
 
�B�
>__inference_signature_wrapper_function_with_signature_13349347
batch_size"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�
j
batch_size
kwonlydefaults
 
annotations� *
 
�B�
>__inference_signature_wrapper_function_with_signature_13349360"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
>__inference_signature_wrapper_function_with_signature_13349365"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpecE
args=�:
jobservations
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�
� 
� 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpecE
args=�:
jobservations
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�
� 
� 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
<
&0
'1
(2
)3"
trackable_list_wrapper
 "
trackable_list_wrapper
<
&0
'1
(2
)3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapperE
__inference_<lambda>_13349120$�

� 
� "�
unknown 	5
__inference_<lambda>_13349122�

� 
� "� S
&__inference_get_initial_state_13349542)"�
�
�

batch_size 
� "� �
*__inference_polymorphic_action_fn_13349432����
���
���
TimeStep,
	step_type�
	step_type���������&
reward�
reward���������*
discount�
discount���������8
observation)�&
observation���������Z
� 
� "V�S

PolicyStep*
action �
action���������
state� 
info� �
*__inference_polymorphic_action_fn_13349499����
���
���
TimeStep6
	step_type)�&
time_step_step_type���������0
reward&�#
time_step_reward���������4
discount(�%
time_step_discount���������B
observation3�0
time_step_observation���������Z
� 
� "V�S

PolicyStep*
action �
action���������
state� 
info� �
0__inference_polymorphic_distribution_fn_13349539����
���
���
TimeStep,
	step_type�
	step_type���������&
reward�
reward���������*
discount�
discount���������8
observation)�&
observation���������Z
� 
� "���

PolicyStep�
action������
`
F�C

atol� 

loc����������

rtol� 
L�I

allow_nan_statsp

namejDeterministic_1_1

validate_argsp 
�
j
parameters
� 
�
jname+tfp.distributions.Deterministic_ACTTypeSpec 
state� 
info� �
>__inference_signature_wrapper_function_with_signature_13349337����
� 
���
2
arg_0_discount �

0/discount���������
@
arg_0_observation+�(
0/observation���������Z
.
arg_0_reward�
0/reward���������
4
arg_0_step_type!�
0/step_type���������"/�,
*
action �
action���������y
>__inference_signature_wrapper_function_with_signature_1334934770�-
� 
&�#
!

batch_size�

batch_size "� r
>__inference_signature_wrapper_function_with_signature_133493600�

� 
� "�

int64�
int64 	V
>__inference_signature_wrapper_function_with_signature_13349365�

� 
� "� 