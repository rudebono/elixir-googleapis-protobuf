defmodule Google.Cloud.Dataproc.V1.CreateSessionTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :session_template, 3,
    type: Google.Cloud.Dataproc.V1.SessionTemplate,
    json_name: "sessionTemplate",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.UpdateSessionTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :session_template, 1,
    type: Google.Cloud.Dataproc.V1.SessionTemplate,
    json_name: "sessionTemplate",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.GetSessionTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ListSessionTemplatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ListSessionTemplatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :session_templates, 1,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.SessionTemplate,
    json_name: "sessionTemplates",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataproc.V1.DeleteSessionTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.SessionTemplate.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1.SessionTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :session_config, 0

  field :name, 1, type: :string, deprecated: false
  field :description, 9, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :jupyter_session, 3,
    type: Google.Cloud.Dataproc.V1.JupyterConfig,
    json_name: "jupyterSession",
    oneof: 0,
    deprecated: false

  field :creator, 5, type: :string, deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.SessionTemplate.LabelsEntry,
    map: true,
    deprecated: false

  field :runtime_config, 7,
    type: Google.Cloud.Dataproc.V1.RuntimeConfig,
    json_name: "runtimeConfig",
    deprecated: false

  field :environment_config, 8,
    type: Google.Cloud.Dataproc.V1.EnvironmentConfig,
    json_name: "environmentConfig",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :uuid, 12, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.SessionTemplateController.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dataproc.v1.SessionTemplateController",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateSessionTemplate,
      Google.Cloud.Dataproc.V1.CreateSessionTemplateRequest,
      Google.Cloud.Dataproc.V1.SessionTemplate

  rpc :UpdateSessionTemplate,
      Google.Cloud.Dataproc.V1.UpdateSessionTemplateRequest,
      Google.Cloud.Dataproc.V1.SessionTemplate

  rpc :GetSessionTemplate,
      Google.Cloud.Dataproc.V1.GetSessionTemplateRequest,
      Google.Cloud.Dataproc.V1.SessionTemplate

  rpc :ListSessionTemplates,
      Google.Cloud.Dataproc.V1.ListSessionTemplatesRequest,
      Google.Cloud.Dataproc.V1.ListSessionTemplatesResponse

  rpc :DeleteSessionTemplate,
      Google.Cloud.Dataproc.V1.DeleteSessionTemplateRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dataproc.V1.SessionTemplateController.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dataproc.V1.SessionTemplateController.Service
end