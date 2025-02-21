defmodule Google.Cloud.Integrations.V1alpha.CloudLoggingDetails.CloudLoggingSeverity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CLOUD_LOGGING_SEVERITY_UNSPECIFIED, 0
  field :INFO, 2
  field :ERROR, 3
  field :WARNING, 4
end

defmodule Google.Cloud.Integrations.V1alpha.CloudLoggingDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cloud_logging_severity, 1,
    proto3_optional: true,
    type: Google.Cloud.Integrations.V1alpha.CloudLoggingDetails.CloudLoggingSeverity,
    json_name: "cloudLoggingSeverity",
    enum: true,
    deprecated: false

  field :enable_cloud_logging, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "enableCloudLogging",
    deprecated: false
end
