��
��
�
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
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
P
Shape

input"T
output"out_type"	
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
executor_typestring �
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
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.12v2.4.0-49-g85c8b2a817f8��
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
�
'QNetwork/EncodingNetwork/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*8
shared_name)'QNetwork/EncodingNetwork/dense_4/kernel
�
;QNetwork/EncodingNetwork/dense_4/kernel/Read/ReadVariableOpReadVariableOp'QNetwork/EncodingNetwork/dense_4/kernel*
_output_shapes

:d*
dtype0
�
%QNetwork/EncodingNetwork/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*6
shared_name'%QNetwork/EncodingNetwork/dense_4/bias
�
9QNetwork/EncodingNetwork/dense_4/bias/Read/ReadVariableOpReadVariableOp%QNetwork/EncodingNetwork/dense_4/bias*
_output_shapes
:d*
dtype0
�
QNetwork/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d
*(
shared_nameQNetwork/dense_5/kernel
�
+QNetwork/dense_5/kernel/Read/ReadVariableOpReadVariableOpQNetwork/dense_5/kernel*
_output_shapes

:d
*
dtype0
�
QNetwork/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameQNetwork/dense_5/bias
{
)QNetwork/dense_5/bias/Read/ReadVariableOpReadVariableOpQNetwork/dense_5/bias*
_output_shapes
:
*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
T

train_step
metadata
model_variables
_all_assets

signatures
CA
VARIABLE_VALUEVariable%train_step/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
	3


0
 
ig
VARIABLE_VALUE'QNetwork/EncodingNetwork/dense_4/kernel,model_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE%QNetwork/EncodingNetwork/dense_4/bias,model_variables/1/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEQNetwork/dense_5/kernel,model_variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEQNetwork/dense_5/bias,model_variables/3/.ATTRIBUTES/VARIABLE_VALUE

ref
1


_q_network
t
_encoder
_q_value_layer
trainable_variables
	variables
regularization_losses
	keras_api
n
_postprocessing_layers
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
	bias
trainable_variables
	variables
regularization_losses
	keras_api

0
1
2
	3

0
1
2
	3
 
�
layer_metrics
layer_regularization_losses
trainable_variables
non_trainable_variables

layers
 metrics
	variables
regularization_losses

!0
"1

0
1

0
1
 
�
#layer_metrics
$layer_regularization_losses
trainable_variables
%non_trainable_variables

&layers
'metrics
	variables
regularization_losses

0
	1

0
	1
 
�
(layer_metrics
)layer_regularization_losses
trainable_variables
*non_trainable_variables

+layers
,metrics
	variables
regularization_losses
 
 
 

0
1
 
R
-trainable_variables
.	variables
/regularization_losses
0	keras_api
h

kernel
bias
1trainable_variables
2	variables
3regularization_losses
4	keras_api
 
 
 

!0
"1
 
 
 
 
 
 
 
 
 
�
5layer_metrics
6layer_regularization_losses
-trainable_variables
7non_trainable_variables

8layers
9metrics
.	variables
/regularization_losses

0
1

0
1
 
�
:layer_metrics
;layer_regularization_losses
1trainable_variables
<non_trainable_variables

=layers
>metrics
2	variables
3regularization_losses
 
 
 
 
 
 
 
 
 
 
l
action_0/discountPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
w
action_0/observationPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
j
action_0/rewardPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
m
action_0/step_typePlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallaction_0/discountaction_0/observationaction_0/rewardaction_0/step_type'QNetwork/EncodingNetwork/dense_4/kernel%QNetwork/EncodingNetwork/dense_4/biasQNetwork/dense_5/kernelQNetwork/dense_5/bias*
Tin

2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_2008585
]
get_initial_state_batch_sizePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
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
GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_2008590
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
GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_2008602
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
GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_2008598
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOp;QNetwork/EncodingNetwork/dense_4/kernel/Read/ReadVariableOp9QNetwork/EncodingNetwork/dense_4/bias/Read/ReadVariableOp+QNetwork/dense_5/kernel/Read/ReadVariableOp)QNetwork/dense_5/bias/Read/ReadVariableOpConst*
Tin
	2	*
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_2008645
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable'QNetwork/EncodingNetwork/dense_4/kernel%QNetwork/EncodingNetwork/dense_4/biasQNetwork/dense_5/kernelQNetwork/dense_5/bias*
Tin

2*
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_2008670��
/

__inference_<lambda>_386*
_input_shapes 
�C
�
)__inference_polymorphic_action_fn_1026679
	step_type

reward
discount
observationC
?qnetwork_encodingnetwork_dense_4_matmul_readvariableop_resourceD
@qnetwork_encodingnetwork_dense_4_biasadd_readvariableop_resource3
/qnetwork_dense_5_matmul_readvariableop_resource4
0qnetwork_dense_5_biasadd_readvariableop_resource
identity	��7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp�6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp�'QNetwork/dense_5/BiasAdd/ReadVariableOp�&QNetwork/dense_5/MatMul/ReadVariableOp�
QNetwork/EncodingNetwork/CastCastobservation*

DstT0*

SrcT0*'
_output_shapes
:���������2
QNetwork/EncodingNetwork/Cast�
(QNetwork/EncodingNetwork/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   2*
(QNetwork/EncodingNetwork/flatten_2/Const�
*QNetwork/EncodingNetwork/flatten_2/ReshapeReshape!QNetwork/EncodingNetwork/Cast:y:01QNetwork/EncodingNetwork/flatten_2/Const:output:0*
T0*'
_output_shapes
:���������2,
*QNetwork/EncodingNetwork/flatten_2/Reshape�
6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOpReadVariableOp?qnetwork_encodingnetwork_dense_4_matmul_readvariableop_resource*
_output_shapes

:d*
dtype028
6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp�
'QNetwork/EncodingNetwork/dense_4/MatMulMatMul3QNetwork/EncodingNetwork/flatten_2/Reshape:output:0>QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2)
'QNetwork/EncodingNetwork/dense_4/MatMul�
7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_dense_4_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype029
7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp�
(QNetwork/EncodingNetwork/dense_4/BiasAddBiasAdd1QNetwork/EncodingNetwork/dense_4/MatMul:product:0?QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2*
(QNetwork/EncodingNetwork/dense_4/BiasAdd�
%QNetwork/EncodingNetwork/dense_4/ReluRelu1QNetwork/EncodingNetwork/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:���������d2'
%QNetwork/EncodingNetwork/dense_4/Relu�
&QNetwork/dense_5/MatMul/ReadVariableOpReadVariableOp/qnetwork_dense_5_matmul_readvariableop_resource*
_output_shapes

:d
*
dtype02(
&QNetwork/dense_5/MatMul/ReadVariableOp�
QNetwork/dense_5/MatMulMatMul3QNetwork/EncodingNetwork/dense_4/Relu:activations:0.QNetwork/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
QNetwork/dense_5/MatMul�
'QNetwork/dense_5/BiasAdd/ReadVariableOpReadVariableOp0qnetwork_dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02)
'QNetwork/dense_5/BiasAdd/ReadVariableOp�
QNetwork/dense_5/BiasAddBiasAdd!QNetwork/dense_5/MatMul:product:0/QNetwork/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
QNetwork/dense_5/BiasAdd�
#Categorical_1/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#Categorical_1/mode/ArgMax/dimension�
Categorical_1/mode/ArgMaxArgMax!QNetwork/dense_5/BiasAdd:output:0,Categorical_1/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:���������2
Categorical_1/mode/ArgMaxj
Deterministic/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic/atolj
Deterministic/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic/rtol�
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape�
Deterministic_1/sample/ShapeShape"Categorical_1/mode/ArgMax:output:0*
T0	*
_output_shapes
:2
Deterministic_1/sample/Shape�
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1�
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const�
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0�
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis�
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat�
"Deterministic_1/sample/BroadcastToBroadcastTo"Categorical_1/mode/ArgMax:output:0&Deterministic_1/sample/concat:output:0*
T0	*'
_output_shapes
:���������2$
"Deterministic_1/sample/BroadcastTo�
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0	*
_output_shapes
:2 
Deterministic_1/sample/Shape_1�
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack�
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1�
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2�
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice�
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis�
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1�
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0	*#
_output_shapes
:���������2 
Deterministic_1/sample/Reshapet
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R	2
clip_by_value/Minimum/y�
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0	*#
_output_shapes
:���������2
clip_by_value/Minimumd
clip_by_value/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
clip_by_value/y�
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0	*#
_output_shapes
:���������2
clip_by_value�
IdentityIdentityclip_by_value:z:08^QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp7^QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp(^QNetwork/dense_5/BiasAdd/ReadVariableOp'^QNetwork/dense_5/MatMul/ReadVariableOp*
T0	*#
_output_shapes
:���������2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:���������:���������:���������:���������::::2r
7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp2p
6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp2R
'QNetwork/dense_5/BiasAdd/ReadVariableOp'QNetwork/dense_5/BiasAdd/ReadVariableOp2P
&QNetwork/dense_5/MatMul/ReadVariableOp&QNetwork/dense_5/MatMul/ReadVariableOp:N J
#
_output_shapes
:���������
#
_user_specified_name	step_type:KG
#
_output_shapes
:���������
 
_user_specified_namereward:MI
#
_output_shapes
:���������
"
_user_specified_name
discount:TP
'
_output_shapes
:���������
%
_user_specified_nameobservation
�
_
%__inference_signature_wrapper_2008598
unknown
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
GPU 2J 8� *4
f/R-
+__inference_function_with_signature_10265672
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall
�	
�
%__inference_signature_wrapper_2008585
discount
observation

reward
	step_type
unknown
	unknown_0
	unknown_1
	unknown_2
identity	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *4
f/R-
+__inference_function_with_signature_10265302
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*#
_output_shapes
:���������2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:���������:���������:���������:���������::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:���������
$
_user_specified_name
0/discount:VR
'
_output_shapes
:���������
'
_user_specified_name0/observation:MI
#
_output_shapes
:���������
"
_user_specified_name
0/reward:PL
#
_output_shapes
:���������
%
_user_specified_name0/step_type
�	
�
+__inference_function_with_signature_1026530
	step_type

reward
discount
observation
unknown
	unknown_0
	unknown_1
	unknown_2
identity	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *2
f-R+
)__inference_polymorphic_action_fn_10265192
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*#
_output_shapes
:���������2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:���������:���������:���������:���������::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:���������
%
_user_specified_name0/step_type:MI
#
_output_shapes
:���������
"
_user_specified_name
0/reward:OK
#
_output_shapes
:���������
$
_user_specified_name
0/discount:VR
'
_output_shapes
:���������
'
_user_specified_name0/observation
�C
�
)__inference_polymorphic_action_fn_1026519
	time_step
time_step_1
time_step_2
time_step_3C
?qnetwork_encodingnetwork_dense_4_matmul_readvariableop_resourceD
@qnetwork_encodingnetwork_dense_4_biasadd_readvariableop_resource3
/qnetwork_dense_5_matmul_readvariableop_resource4
0qnetwork_dense_5_biasadd_readvariableop_resource
identity	��7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp�6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp�'QNetwork/dense_5/BiasAdd/ReadVariableOp�&QNetwork/dense_5/MatMul/ReadVariableOp�
QNetwork/EncodingNetwork/CastCasttime_step_3*

DstT0*

SrcT0*'
_output_shapes
:���������2
QNetwork/EncodingNetwork/Cast�
(QNetwork/EncodingNetwork/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   2*
(QNetwork/EncodingNetwork/flatten_2/Const�
*QNetwork/EncodingNetwork/flatten_2/ReshapeReshape!QNetwork/EncodingNetwork/Cast:y:01QNetwork/EncodingNetwork/flatten_2/Const:output:0*
T0*'
_output_shapes
:���������2,
*QNetwork/EncodingNetwork/flatten_2/Reshape�
6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOpReadVariableOp?qnetwork_encodingnetwork_dense_4_matmul_readvariableop_resource*
_output_shapes

:d*
dtype028
6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp�
'QNetwork/EncodingNetwork/dense_4/MatMulMatMul3QNetwork/EncodingNetwork/flatten_2/Reshape:output:0>QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2)
'QNetwork/EncodingNetwork/dense_4/MatMul�
7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_dense_4_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype029
7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp�
(QNetwork/EncodingNetwork/dense_4/BiasAddBiasAdd1QNetwork/EncodingNetwork/dense_4/MatMul:product:0?QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2*
(QNetwork/EncodingNetwork/dense_4/BiasAdd�
%QNetwork/EncodingNetwork/dense_4/ReluRelu1QNetwork/EncodingNetwork/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:���������d2'
%QNetwork/EncodingNetwork/dense_4/Relu�
&QNetwork/dense_5/MatMul/ReadVariableOpReadVariableOp/qnetwork_dense_5_matmul_readvariableop_resource*
_output_shapes

:d
*
dtype02(
&QNetwork/dense_5/MatMul/ReadVariableOp�
QNetwork/dense_5/MatMulMatMul3QNetwork/EncodingNetwork/dense_4/Relu:activations:0.QNetwork/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
QNetwork/dense_5/MatMul�
'QNetwork/dense_5/BiasAdd/ReadVariableOpReadVariableOp0qnetwork_dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02)
'QNetwork/dense_5/BiasAdd/ReadVariableOp�
QNetwork/dense_5/BiasAddBiasAdd!QNetwork/dense_5/MatMul:product:0/QNetwork/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
QNetwork/dense_5/BiasAdd�
#Categorical_1/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#Categorical_1/mode/ArgMax/dimension�
Categorical_1/mode/ArgMaxArgMax!QNetwork/dense_5/BiasAdd:output:0,Categorical_1/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:���������2
Categorical_1/mode/ArgMaxj
Deterministic/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic/atolj
Deterministic/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic/rtol�
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape�
Deterministic_1/sample/ShapeShape"Categorical_1/mode/ArgMax:output:0*
T0	*
_output_shapes
:2
Deterministic_1/sample/Shape�
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1�
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const�
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0�
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis�
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat�
"Deterministic_1/sample/BroadcastToBroadcastTo"Categorical_1/mode/ArgMax:output:0&Deterministic_1/sample/concat:output:0*
T0	*'
_output_shapes
:���������2$
"Deterministic_1/sample/BroadcastTo�
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0	*
_output_shapes
:2 
Deterministic_1/sample/Shape_1�
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack�
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1�
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2�
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice�
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis�
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1�
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0	*#
_output_shapes
:���������2 
Deterministic_1/sample/Reshapet
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R	2
clip_by_value/Minimum/y�
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0	*#
_output_shapes
:���������2
clip_by_value/Minimumd
clip_by_value/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
clip_by_value/y�
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0	*#
_output_shapes
:���������2
clip_by_value�
IdentityIdentityclip_by_value:z:08^QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp7^QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp(^QNetwork/dense_5/BiasAdd/ReadVariableOp'^QNetwork/dense_5/MatMul/ReadVariableOp*
T0	*#
_output_shapes
:���������2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:���������:���������:���������:���������::::2r
7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp2p
6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp2R
'QNetwork/dense_5/BiasAdd/ReadVariableOp'QNetwork/dense_5/BiasAdd/ReadVariableOp2P
&QNetwork/dense_5/MatMul/ReadVariableOp&QNetwork/dense_5/MatMul/ReadVariableOp:N J
#
_output_shapes
:���������
#
_user_specified_name	time_step:NJ
#
_output_shapes
:���������
#
_user_specified_name	time_step:NJ
#
_output_shapes
:���������
#
_user_specified_name	time_step:RN
'
_output_shapes
:���������
#
_user_specified_name	time_step
�)
�
/__inference_polymorphic_distribution_fn_1026710
	step_type

reward
discount
observationC
?qnetwork_encodingnetwork_dense_4_matmul_readvariableop_resourceD
@qnetwork_encodingnetwork_dense_4_biasadd_readvariableop_resource3
/qnetwork_dense_5_matmul_readvariableop_resource4
0qnetwork_dense_5_biasadd_readvariableop_resource
identity	��7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp�6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp�'QNetwork/dense_5/BiasAdd/ReadVariableOp�&QNetwork/dense_5/MatMul/ReadVariableOp�
QNetwork/EncodingNetwork/CastCastobservation*

DstT0*

SrcT0*'
_output_shapes
:���������2
QNetwork/EncodingNetwork/Cast�
(QNetwork/EncodingNetwork/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   2*
(QNetwork/EncodingNetwork/flatten_2/Const�
*QNetwork/EncodingNetwork/flatten_2/ReshapeReshape!QNetwork/EncodingNetwork/Cast:y:01QNetwork/EncodingNetwork/flatten_2/Const:output:0*
T0*'
_output_shapes
:���������2,
*QNetwork/EncodingNetwork/flatten_2/Reshape�
6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOpReadVariableOp?qnetwork_encodingnetwork_dense_4_matmul_readvariableop_resource*
_output_shapes

:d*
dtype028
6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp�
'QNetwork/EncodingNetwork/dense_4/MatMulMatMul3QNetwork/EncodingNetwork/flatten_2/Reshape:output:0>QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2)
'QNetwork/EncodingNetwork/dense_4/MatMul�
7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_dense_4_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype029
7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp�
(QNetwork/EncodingNetwork/dense_4/BiasAddBiasAdd1QNetwork/EncodingNetwork/dense_4/MatMul:product:0?QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2*
(QNetwork/EncodingNetwork/dense_4/BiasAdd�
%QNetwork/EncodingNetwork/dense_4/ReluRelu1QNetwork/EncodingNetwork/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:���������d2'
%QNetwork/EncodingNetwork/dense_4/Relu�
&QNetwork/dense_5/MatMul/ReadVariableOpReadVariableOp/qnetwork_dense_5_matmul_readvariableop_resource*
_output_shapes

:d
*
dtype02(
&QNetwork/dense_5/MatMul/ReadVariableOp�
QNetwork/dense_5/MatMulMatMul3QNetwork/EncodingNetwork/dense_4/Relu:activations:0.QNetwork/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
QNetwork/dense_5/MatMul�
'QNetwork/dense_5/BiasAdd/ReadVariableOpReadVariableOp0qnetwork_dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02)
'QNetwork/dense_5/BiasAdd/ReadVariableOp�
QNetwork/dense_5/BiasAddBiasAdd!QNetwork/dense_5/MatMul:product:0/QNetwork/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
QNetwork/dense_5/BiasAdd�
#Categorical_1/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#Categorical_1/mode/ArgMax/dimension�
Categorical_1/mode/ArgMaxArgMax!QNetwork/dense_5/BiasAdd:output:0,Categorical_1/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:���������2
Categorical_1/mode/ArgMaxj
Deterministic/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic/atolj
Deterministic/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic/rtoln
Deterministic_1/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic_1/atoln
Deterministic_1/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic_1/rtol�
IdentityIdentity"Categorical_1/mode/ArgMax:output:08^QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp7^QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp(^QNetwork/dense_5/BiasAdd/ReadVariableOp'^QNetwork/dense_5/MatMul/ReadVariableOp*
T0	*#
_output_shapes
:���������2

Identityn
Deterministic_2/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic_2/atoln
Deterministic_2/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic_2/rtol"
identityIdentity:output:0*c
_input_shapesR
P:���������:���������:���������:���������::::2r
7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp2p
6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp2R
'QNetwork/dense_5/BiasAdd/ReadVariableOp'QNetwork/dense_5/BiasAdd/ReadVariableOp2P
&QNetwork/dense_5/MatMul/ReadVariableOp&QNetwork/dense_5/MatMul/ReadVariableOp:N J
#
_output_shapes
:���������
#
_user_specified_name	step_type:KG
#
_output_shapes
:���������
 
_user_specified_namereward:MI
#
_output_shapes
:���������
"
_user_specified_name
discount:TP
'
_output_shapes
:���������
%
_user_specified_nameobservation
�
7
%__inference_signature_wrapper_2008590

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
GPU 2J 8� *4
f/R-
+__inference_function_with_signature_10265552
PartitionedCall*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�D
�
)__inference_polymorphic_action_fn_1026631
time_step_step_type
time_step_reward
time_step_discount
time_step_observationC
?qnetwork_encodingnetwork_dense_4_matmul_readvariableop_resourceD
@qnetwork_encodingnetwork_dense_4_biasadd_readvariableop_resource3
/qnetwork_dense_5_matmul_readvariableop_resource4
0qnetwork_dense_5_biasadd_readvariableop_resource
identity	��7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp�6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp�'QNetwork/dense_5/BiasAdd/ReadVariableOp�&QNetwork/dense_5/MatMul/ReadVariableOp�
QNetwork/EncodingNetwork/CastCasttime_step_observation*

DstT0*

SrcT0*'
_output_shapes
:���������2
QNetwork/EncodingNetwork/Cast�
(QNetwork/EncodingNetwork/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   2*
(QNetwork/EncodingNetwork/flatten_2/Const�
*QNetwork/EncodingNetwork/flatten_2/ReshapeReshape!QNetwork/EncodingNetwork/Cast:y:01QNetwork/EncodingNetwork/flatten_2/Const:output:0*
T0*'
_output_shapes
:���������2,
*QNetwork/EncodingNetwork/flatten_2/Reshape�
6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOpReadVariableOp?qnetwork_encodingnetwork_dense_4_matmul_readvariableop_resource*
_output_shapes

:d*
dtype028
6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp�
'QNetwork/EncodingNetwork/dense_4/MatMulMatMul3QNetwork/EncodingNetwork/flatten_2/Reshape:output:0>QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2)
'QNetwork/EncodingNetwork/dense_4/MatMul�
7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOpReadVariableOp@qnetwork_encodingnetwork_dense_4_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype029
7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp�
(QNetwork/EncodingNetwork/dense_4/BiasAddBiasAdd1QNetwork/EncodingNetwork/dense_4/MatMul:product:0?QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2*
(QNetwork/EncodingNetwork/dense_4/BiasAdd�
%QNetwork/EncodingNetwork/dense_4/ReluRelu1QNetwork/EncodingNetwork/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:���������d2'
%QNetwork/EncodingNetwork/dense_4/Relu�
&QNetwork/dense_5/MatMul/ReadVariableOpReadVariableOp/qnetwork_dense_5_matmul_readvariableop_resource*
_output_shapes

:d
*
dtype02(
&QNetwork/dense_5/MatMul/ReadVariableOp�
QNetwork/dense_5/MatMulMatMul3QNetwork/EncodingNetwork/dense_4/Relu:activations:0.QNetwork/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
QNetwork/dense_5/MatMul�
'QNetwork/dense_5/BiasAdd/ReadVariableOpReadVariableOp0qnetwork_dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02)
'QNetwork/dense_5/BiasAdd/ReadVariableOp�
QNetwork/dense_5/BiasAddBiasAdd!QNetwork/dense_5/MatMul:product:0/QNetwork/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
QNetwork/dense_5/BiasAdd�
#Categorical_1/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#Categorical_1/mode/ArgMax/dimension�
Categorical_1/mode/ArgMaxArgMax!QNetwork/dense_5/BiasAdd:output:0,Categorical_1/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:���������2
Categorical_1/mode/ArgMaxj
Deterministic/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic/atolj
Deterministic/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic/rtol�
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape�
Deterministic_1/sample/ShapeShape"Categorical_1/mode/ArgMax:output:0*
T0	*
_output_shapes
:2
Deterministic_1/sample/Shape�
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1�
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const�
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0�
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis�
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat�
"Deterministic_1/sample/BroadcastToBroadcastTo"Categorical_1/mode/ArgMax:output:0&Deterministic_1/sample/concat:output:0*
T0	*'
_output_shapes
:���������2$
"Deterministic_1/sample/BroadcastTo�
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0	*
_output_shapes
:2 
Deterministic_1/sample/Shape_1�
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack�
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1�
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2�
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice�
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis�
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1�
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0	*#
_output_shapes
:���������2 
Deterministic_1/sample/Reshapet
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R	2
clip_by_value/Minimum/y�
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0	*#
_output_shapes
:���������2
clip_by_value/Minimumd
clip_by_value/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
clip_by_value/y�
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0	*#
_output_shapes
:���������2
clip_by_value�
IdentityIdentityclip_by_value:z:08^QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp7^QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp(^QNetwork/dense_5/BiasAdd/ReadVariableOp'^QNetwork/dense_5/MatMul/ReadVariableOp*
T0	*#
_output_shapes
:���������2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:���������:���������:���������:���������::::2r
7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp7QNetwork/EncodingNetwork/dense_4/BiasAdd/ReadVariableOp2p
6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp6QNetwork/EncodingNetwork/dense_4/MatMul/ReadVariableOp2R
'QNetwork/dense_5/BiasAdd/ReadVariableOp'QNetwork/dense_5/BiasAdd/ReadVariableOp2P
&QNetwork/dense_5/MatMul/ReadVariableOp&QNetwork/dense_5/MatMul/ReadVariableOp:X T
#
_output_shapes
:���������
-
_user_specified_nametime_step/step_type:UQ
#
_output_shapes
:���������
*
_user_specified_nametime_step/reward:WS
#
_output_shapes
:���������
,
_user_specified_nametime_step/discount:^Z
'
_output_shapes
:���������
/
_user_specified_nametime_step/observation
�
'
%__inference_signature_wrapper_2008602�
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
GPU 2J 8� *4
f/R-
+__inference_function_with_signature_10265782
PartitionedCall*
_input_shapes 
�
Y
__inference_<lambda>_383
readvariableop_resource
identity	��ReadVariableOpp
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	2
ReadVariableOpj
IdentityIdentityReadVariableOp:value:0^ReadVariableOp*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2 
ReadVariableOpReadVariableOp
�
7
%__inference_get_initial_state_1026713

batch_size*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�
7
%__inference_get_initial_state_1026554

batch_size*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�
�
#__inference__traced_restore_2008670
file_prefix
assignvariableop_variable>
:assignvariableop_1_qnetwork_encodingnetwork_dense_4_kernel<
8assignvariableop_2_qnetwork_encodingnetwork_dense_4_bias.
*assignvariableop_3_qnetwork_dense_5_kernel,
(assignvariableop_4_qnetwork_dense_5_bias

identity_6��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*,
_output_shapes
::::::*
dtypes

2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp:assignvariableop_1_qnetwork_encodingnetwork_dense_4_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp8assignvariableop_2_qnetwork_encodingnetwork_dense_4_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp*assignvariableop_3_qnetwork_dense_5_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp(assignvariableop_4_qnetwork_dense_5_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�

Identity_5Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_5�

Identity_6IdentityIdentity_5:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4*
T0*
_output_shapes
: 2

Identity_6"!

identity_6Identity_6:output:0*)
_input_shapes
: :::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_4:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
-
+__inference_function_with_signature_1026578�
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
GPU 2J 8� *!
fR
__inference_<lambda>_3862
PartitionedCall*
_input_shapes 
�
=
+__inference_function_with_signature_1026555

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
GPU 2J 8� *.
f)R'
%__inference_get_initial_state_10265542
PartitionedCall*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�
�
 __inference__traced_save_2008645
file_prefix'
#savev2_variable_read_readvariableop	F
Bsavev2_qnetwork_encodingnetwork_dense_4_kernel_read_readvariableopD
@savev2_qnetwork_encodingnetwork_dense_4_bias_read_readvariableop6
2savev2_qnetwork_dense_5_kernel_read_readvariableop4
0savev2_qnetwork_dense_5_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableopBsavev2_qnetwork_encodingnetwork_dense_4_kernel_read_readvariableop@savev2_qnetwork_encodingnetwork_dense_4_bias_read_readvariableop2savev2_qnetwork_dense_5_kernel_read_readvariableop0savev2_qnetwork_dense_5_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes

2	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*9
_input_shapes(
&: : :d:d:d
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :$ 

_output_shapes

:d: 

_output_shapes
:d:$ 

_output_shapes

:d
: 

_output_shapes
:
:

_output_shapes
: 
�
e
+__inference_function_with_signature_1026567
unknown
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
GPU 2J 8� *!
fR
__inference_<lambda>_3832
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall"�L
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
action_0/discount:0���������
>
0/observation-
action_0/observation:0���������
0
0/reward$
action_0/reward:0���������
6
0/step_type'
action_0/step_type:0���������6
action,
StatefulPartitionedCall:0	���������tensorflow/serving/predict*e
get_initial_stateP
2

batch_size$
get_initial_state_batch_size:0 tensorflow/serving/predict*,
get_metadatatensorflow/serving/predict*Z
get_train_stepH*
int64!
StatefulPartitionedCall_1:0	 tensorflow/serving/predict:�i
�

train_step
metadata
model_variables
_all_assets

signatures

?action
@distribution
Aget_initial_state
Bget_metadata
Cget_train_step"
_generic_user_object
:	 (2Variable
 "
trackable_dict_wrapper
=
0
1
2
	3"
trackable_tuple_wrapper
'

0"
trackable_list_wrapper
`

Daction
Eget_initial_state
Fget_train_step
Gget_metadata"
signature_map
9:7d2'QNetwork/EncodingNetwork/dense_4/kernel
3:1d2%QNetwork/EncodingNetwork/dense_4/bias
):'d
2QNetwork/dense_5/kernel
#:!
2QNetwork/dense_5/bias
1
ref
1"
trackable_tuple_wrapper
.

_q_network"
_generic_user_object
�
_encoder
_q_value_layer
trainable_variables
	variables
regularization_losses
	keras_api
H__call__
*I&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "QNetwork", "name": "QNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
�
_postprocessing_layers
trainable_variables
	variables
regularization_losses
	keras_api
J__call__
*K&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "EncodingNetwork", "name": "EncodingNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
�

kernel
	bias
trainable_variables
	variables
regularization_losses
	keras_api
L__call__
*M&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.03, "maxval": 0.03, "seed": null}}, "bias_initializer": {"class_name": "Constant", "config": {"value": -0.2}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 100]}}
<
0
1
2
	3"
trackable_list_wrapper
<
0
1
2
	3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
layer_metrics
layer_regularization_losses
trainable_variables
non_trainable_variables

layers
 metrics
	variables
regularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
.
!0
"1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
#layer_metrics
$layer_regularization_losses
trainable_variables
%non_trainable_variables

&layers
'metrics
	variables
regularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
.
0
	1"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
(layer_metrics
)layer_regularization_losses
trainable_variables
*non_trainable_variables

+layers
,metrics
	variables
regularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
-trainable_variables
.	variables
/regularization_losses
0	keras_api
N__call__
*O&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Flatten", "name": "flatten_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
�

kernel
bias
1trainable_variables
2	variables
3regularization_losses
4	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 7}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 7]}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
!0
"1"
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
5layer_metrics
6layer_regularization_losses
-trainable_variables
7non_trainable_variables

8layers
9metrics
.	variables
/regularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
:layer_metrics
;layer_regularization_losses
1trainable_variables
<non_trainable_variables

=layers
>metrics
2	variables
3regularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
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
�2�
)__inference_polymorphic_action_fn_1026631
)__inference_polymorphic_action_fn_1026679�
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
 
�2�
/__inference_polymorphic_distribution_fn_1026710�
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
 
�2�
%__inference_get_initial_state_1026713�
���
FullArgSpec!
args�
jself
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
annotations� *
 
�B�
__inference_<lambda>_386"�
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
annotations� *
 
�B�
__inference_<lambda>_383"�
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
annotations� *
 
�B�
%__inference_signature_wrapper_2008585
0/discount0/observation0/reward0/step_type"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_signature_wrapper_2008590
batch_size"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_signature_wrapper_2008598"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_signature_wrapper_2008602"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�

 
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�

 
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�

 
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�

 
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 7
__inference_<lambda>_383�

� 
� "� 	0
__inference_<lambda>_386�

� 
� "� R
%__inference_get_initial_state_1026713)"�
�
�

batch_size 
� "� �
)__inference_polymorphic_action_fn_1026631�	���
���
���
TimeStep6
	step_type)�&
time_step/step_type���������0
reward&�#
time_step/reward���������4
discount(�%
time_step/discount���������>
observation/�,
time_step/observation���������
� 
� "R�O

PolicyStep&
action�
action���������	
state� 
info� �
)__inference_polymorphic_action_fn_1026679�	���
���
���
TimeStep,
	step_type�
	step_type���������&
reward�
reward���������*
discount�
discount���������4
observation%�"
observation���������
� 
� "R�O

PolicyStep&
action�
action���������	
state� 
info� �
/__inference_polymorphic_distribution_fn_1026710�	���
���
���
TimeStep,
	step_type�
	step_type���������&
reward�
reward���������*
discount�
discount���������4
observation%�"
observation���������
� 
� "���

PolicyStep�
action�����Ã}�z
`
C�@
"j tf_agents.policies.greedy_policy
jDeterministicWithLogProb
*�'
%
loc�
Identity���������	
� _TFPTypeSpec
state� 
info� �
%__inference_signature_wrapper_2008585�	���
� 
���
.

0/discount �

0/discount���������
8
0/observation'�$
0/observation���������
*
0/reward�
0/reward���������
0
0/step_type!�
0/step_type���������"+�(
&
action�
action���������	`
%__inference_signature_wrapper_200859070�-
� 
&�#
!

batch_size�

batch_size "� Y
%__inference_signature_wrapper_20085980�

� 
� "�

int64�
int64 	=
%__inference_signature_wrapper_2008602�

� 
� "� 