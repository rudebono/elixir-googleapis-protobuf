defmodule Google.Cloud.Cloudsecuritycompliance.V1.ListFrameworksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ListFrameworksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :frameworks, 1, repeated: true, type: Google.Cloud.Cloudsecuritycompliance.V1.Framework
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.GetFrameworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :major_revision_id, 2, type: :int64, json_name: "majorRevisionId", deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CreateFrameworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :framework_id, 2, type: :string, json_name: "frameworkId", deprecated: false
  field :framework, 3, type: Google.Cloud.Cloudsecuritycompliance.V1.Framework, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.UpdateFrameworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :framework, 2, type: Google.Cloud.Cloudsecuritycompliance.V1.Framework, deprecated: false
  field :major_revision_id, 3, type: :int64, json_name: "majorRevisionId", deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.DeleteFrameworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ListCloudControlsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ListCloudControlsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cloud_controls, 1,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudControl,
    json_name: "cloudControls"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.GetCloudControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :major_revision_id, 2, type: :int64, json_name: "majorRevisionId", deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CreateCloudControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cloud_control_id, 2, type: :string, json_name: "cloudControlId", deprecated: false

  field :cloud_control, 3,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudControl,
    json_name: "cloudControl",
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.UpdateCloudControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :cloud_control, 2,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudControl,
    json_name: "cloudControl",
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.DeleteCloudControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.Config.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.cloudsecuritycompliance.v1.Config",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListFrameworks,
      Google.Cloud.Cloudsecuritycompliance.V1.ListFrameworksRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.ListFrameworksResponse

  rpc :GetFramework,
      Google.Cloud.Cloudsecuritycompliance.V1.GetFrameworkRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.Framework

  rpc :CreateFramework,
      Google.Cloud.Cloudsecuritycompliance.V1.CreateFrameworkRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.Framework

  rpc :UpdateFramework,
      Google.Cloud.Cloudsecuritycompliance.V1.UpdateFrameworkRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.Framework

  rpc :DeleteFramework,
      Google.Cloud.Cloudsecuritycompliance.V1.DeleteFrameworkRequest,
      Google.Protobuf.Empty

  rpc :ListCloudControls,
      Google.Cloud.Cloudsecuritycompliance.V1.ListCloudControlsRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.ListCloudControlsResponse

  rpc :GetCloudControl,
      Google.Cloud.Cloudsecuritycompliance.V1.GetCloudControlRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.CloudControl

  rpc :CreateCloudControl,
      Google.Cloud.Cloudsecuritycompliance.V1.CreateCloudControlRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.CloudControl

  rpc :UpdateCloudControl,
      Google.Cloud.Cloudsecuritycompliance.V1.UpdateCloudControlRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.CloudControl

  rpc :DeleteCloudControl,
      Google.Cloud.Cloudsecuritycompliance.V1.DeleteCloudControlRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.Config.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Cloudsecuritycompliance.V1.Config.Service
end
