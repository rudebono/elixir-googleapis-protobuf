defmodule Google.Cloud.Gkemulticloud.V1.AwsCluster.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :RUNNING, 2
  field :RECONCILING, 3
  field :STOPPING, 4
  field :ERROR, 5
  field :DEGRADED, 6
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsVolumeTemplate.VolumeType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :VOLUME_TYPE_UNSPECIFIED, 0
  field :GP2, 1
  field :GP3, 2
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsNodePool.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :RUNNING, 2
  field :RECONCILING, 3
  field :STOPPING, 4
  field :ERROR, 5
  field :DEGRADED, 6
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsInstancePlacement.Tenancy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TENANCY_UNSPECIFIED, 0
  field :DEFAULT, 1
  field :DEDICATED, 2
  field :HOST, 3
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsCluster.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsCluster do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string, deprecated: false

  field :networking, 3,
    type: Google.Cloud.Gkemulticloud.V1.AwsClusterNetworking,
    deprecated: false

  field :aws_region, 4, type: :string, json_name: "awsRegion", deprecated: false

  field :control_plane, 5,
    type: Google.Cloud.Gkemulticloud.V1.AwsControlPlane,
    json_name: "controlPlane",
    deprecated: false

  field :authorization, 15,
    type: Google.Cloud.Gkemulticloud.V1.AwsAuthorization,
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Gkemulticloud.V1.AwsCluster.State,
    enum: true,
    deprecated: false

  field :endpoint, 8, type: :string, deprecated: false
  field :uid, 9, type: :string, deprecated: false
  field :reconciling, 10, type: :bool, deprecated: false

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 13, type: :string

  field :annotations, 14,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AwsCluster.AnnotationsEntry,
    map: true,
    deprecated: false

  field :workload_identity_config, 16,
    type: Google.Cloud.Gkemulticloud.V1.WorkloadIdentityConfig,
    json_name: "workloadIdentityConfig",
    deprecated: false

  field :cluster_ca_certificate, 17,
    type: :string,
    json_name: "clusterCaCertificate",
    deprecated: false

  field :fleet, 18, type: Google.Cloud.Gkemulticloud.V1.Fleet, deprecated: false

  field :logging_config, 19,
    type: Google.Cloud.Gkemulticloud.V1.LoggingConfig,
    json_name: "loggingConfig",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsControlPlane.TagsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsControlPlane do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :string, deprecated: false
  field :instance_type, 2, type: :string, json_name: "instanceType", deprecated: false

  field :ssh_config, 14,
    type: Google.Cloud.Gkemulticloud.V1.AwsSshConfig,
    json_name: "sshConfig",
    deprecated: false

  field :subnet_ids, 4, repeated: true, type: :string, json_name: "subnetIds", deprecated: false

  field :security_group_ids, 5,
    repeated: true,
    type: :string,
    json_name: "securityGroupIds",
    deprecated: false

  field :iam_instance_profile, 7,
    type: :string,
    json_name: "iamInstanceProfile",
    deprecated: false

  field :root_volume, 8,
    type: Google.Cloud.Gkemulticloud.V1.AwsVolumeTemplate,
    json_name: "rootVolume",
    deprecated: false

  field :main_volume, 9,
    type: Google.Cloud.Gkemulticloud.V1.AwsVolumeTemplate,
    json_name: "mainVolume",
    deprecated: false

  field :database_encryption, 10,
    type: Google.Cloud.Gkemulticloud.V1.AwsDatabaseEncryption,
    json_name: "databaseEncryption",
    deprecated: false

  field :tags, 11,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AwsControlPlane.TagsEntry,
    map: true,
    deprecated: false

  field :aws_services_authentication, 12,
    type: Google.Cloud.Gkemulticloud.V1.AwsServicesAuthentication,
    json_name: "awsServicesAuthentication",
    deprecated: false

  field :proxy_config, 16,
    type: Google.Cloud.Gkemulticloud.V1.AwsProxyConfig,
    json_name: "proxyConfig",
    deprecated: false

  field :config_encryption, 17,
    type: Google.Cloud.Gkemulticloud.V1.AwsConfigEncryption,
    json_name: "configEncryption",
    deprecated: false

  field :instance_placement, 18,
    type: Google.Cloud.Gkemulticloud.V1.AwsInstancePlacement,
    json_name: "instancePlacement",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsServicesAuthentication do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :role_arn, 1, type: :string, json_name: "roleArn", deprecated: false
  field :role_session_name, 2, type: :string, json_name: "roleSessionName", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsAuthorization do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :admin_users, 1,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AwsClusterUser,
    json_name: "adminUsers",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsClusterUser do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :username, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsDatabaseEncryption do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kms_key_arn, 1, type: :string, json_name: "kmsKeyArn", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsVolumeTemplate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :size_gib, 1, type: :int32, json_name: "sizeGib", deprecated: false

  field :volume_type, 2,
    type: Google.Cloud.Gkemulticloud.V1.AwsVolumeTemplate.VolumeType,
    json_name: "volumeType",
    enum: true,
    deprecated: false

  field :iops, 3, type: :int32, deprecated: false
  field :kms_key_arn, 4, type: :string, json_name: "kmsKeyArn", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsClusterNetworking do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vpc_id, 1, type: :string, json_name: "vpcId", deprecated: false

  field :pod_address_cidr_blocks, 2,
    repeated: true,
    type: :string,
    json_name: "podAddressCidrBlocks",
    deprecated: false

  field :service_address_cidr_blocks, 3,
    repeated: true,
    type: :string,
    json_name: "serviceAddressCidrBlocks",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsNodePool.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsNodePool do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :version, 3, type: :string, deprecated: false
  field :config, 28, type: Google.Cloud.Gkemulticloud.V1.AwsNodeConfig, deprecated: false

  field :autoscaling, 25,
    type: Google.Cloud.Gkemulticloud.V1.AwsNodePoolAutoscaling,
    deprecated: false

  field :subnet_id, 6, type: :string, json_name: "subnetId", deprecated: false

  field :state, 16,
    type: Google.Cloud.Gkemulticloud.V1.AwsNodePool.State,
    enum: true,
    deprecated: false

  field :uid, 17, type: :string, deprecated: false
  field :reconciling, 18, type: :bool, deprecated: false

  field :create_time, 19,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 20,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 21, type: :string

  field :annotations, 22,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AwsNodePool.AnnotationsEntry,
    map: true,
    deprecated: false

  field :max_pods_constraint, 27,
    type: Google.Cloud.Gkemulticloud.V1.MaxPodsConstraint,
    json_name: "maxPodsConstraint",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsNodeConfig.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsNodeConfig.TagsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsNodeConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_type, 1, type: :string, json_name: "instanceType", deprecated: false

  field :root_volume, 2,
    type: Google.Cloud.Gkemulticloud.V1.AwsVolumeTemplate,
    json_name: "rootVolume",
    deprecated: false

  field :taints, 3,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.NodeTaint,
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AwsNodeConfig.LabelsEntry,
    map: true,
    deprecated: false

  field :tags, 5,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AwsNodeConfig.TagsEntry,
    map: true,
    deprecated: false

  field :iam_instance_profile, 6,
    type: :string,
    json_name: "iamInstanceProfile",
    deprecated: false

  field :image_type, 11, type: :string, json_name: "imageType", deprecated: false

  field :ssh_config, 9,
    type: Google.Cloud.Gkemulticloud.V1.AwsSshConfig,
    json_name: "sshConfig",
    deprecated: false

  field :security_group_ids, 10,
    repeated: true,
    type: :string,
    json_name: "securityGroupIds",
    deprecated: false

  field :proxy_config, 12,
    type: Google.Cloud.Gkemulticloud.V1.AwsProxyConfig,
    json_name: "proxyConfig",
    deprecated: false

  field :config_encryption, 13,
    type: Google.Cloud.Gkemulticloud.V1.AwsConfigEncryption,
    json_name: "configEncryption",
    deprecated: false

  field :instance_placement, 14,
    type: Google.Cloud.Gkemulticloud.V1.AwsInstancePlacement,
    json_name: "instancePlacement",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsNodePoolAutoscaling do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :min_node_count, 1, type: :int32, json_name: "minNodeCount", deprecated: false
  field :max_node_count, 2, type: :int32, json_name: "maxNodeCount", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsServerConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string

  field :valid_versions, 2,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AwsK8sVersionInfo,
    json_name: "validVersions"

  field :supported_aws_regions, 3, repeated: true, type: :string, json_name: "supportedAwsRegions"
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsK8sVersionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsSshConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ec2_key_pair, 1, type: :string, json_name: "ec2KeyPair", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsProxyConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :secret_arn, 1, type: :string, json_name: "secretArn"
  field :secret_version, 2, type: :string, json_name: "secretVersion"
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsConfigEncryption do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kms_key_arn, 1, type: :string, json_name: "kmsKeyArn", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsInstancePlacement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tenancy, 1,
    type: Google.Cloud.Gkemulticloud.V1.AwsInstancePlacement.Tenancy,
    enum: true,
    deprecated: false
end