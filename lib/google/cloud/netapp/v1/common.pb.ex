defmodule Google.Cloud.Netapp.V1.ServiceLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SERVICE_LEVEL_UNSPECIFIED, 0
  field :PREMIUM, 1
  field :EXTREME, 2
  field :STANDARD, 3
  field :FLEX, 4
end

defmodule Google.Cloud.Netapp.V1.FlexPerformance do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FLEX_PERFORMANCE_UNSPECIFIED, 0
  field :FLEX_PERFORMANCE_DEFAULT, 1
  field :FLEX_PERFORMANCE_CUSTOM, 2
end

defmodule Google.Cloud.Netapp.V1.EncryptionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ENCRYPTION_TYPE_UNSPECIFIED, 0
  field :SERVICE_MANAGED, 1
  field :CLOUD_KMS, 2
end

defmodule Google.Cloud.Netapp.V1.DirectoryServiceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DIRECTORY_SERVICE_TYPE_UNSPECIFIED, 0
  field :ACTIVE_DIRECTORY, 1
end

defmodule Google.Cloud.Netapp.V1.HybridReplicationSchedule do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HYBRID_REPLICATION_SCHEDULE_UNSPECIFIED, 0
  field :EVERY_10_MINUTES, 1
  field :HOURLY, 2
  field :DAILY, 3
end

defmodule Google.Cloud.Netapp.V1.QosType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :QOS_TYPE_UNSPECIFIED, 0
  field :AUTO, 1
  field :MANUAL, 2
end

defmodule Google.Cloud.Netapp.V1.LocationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :supported_service_levels, 1,
    repeated: true,
    type: Google.Cloud.Netapp.V1.ServiceLevel,
    json_name: "supportedServiceLevels",
    enum: true,
    deprecated: false

  field :supported_flex_performance, 2,
    repeated: true,
    type: Google.Cloud.Netapp.V1.FlexPerformance,
    json_name: "supportedFlexPerformance",
    enum: true,
    deprecated: false

  field :has_vcp, 3, type: :bool, json_name: "hasVcp", deprecated: false
end

defmodule Google.Cloud.Netapp.V1.UserCommands do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :commands, 1, repeated: true, type: :string, deprecated: false
end
