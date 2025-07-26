defmodule Google.Cloud.Retail.V2alpha.GetProjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.AcceptTermsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.EnrollSolutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false

  field :solution, 2,
    type: Google.Cloud.Retail.V2alpha.SolutionType,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.EnrollSolutionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enrolled_solution, 1,
    type: Google.Cloud.Retail.V2alpha.SolutionType,
    json_name: "enrolledSolution",
    enum: true
end

defmodule Google.Cloud.Retail.V2alpha.EnrollSolutionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2alpha.ListEnrolledSolutionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.ListEnrolledSolutionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enrolled_solutions, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.SolutionType,
    json_name: "enrolledSolutions",
    enum: true
end

defmodule Google.Cloud.Retail.V2alpha.GetLoggingConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.UpdateLoggingConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :logging_config, 1,
    type: Google.Cloud.Retail.V2alpha.LoggingConfig,
    json_name: "loggingConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Retail.V2alpha.GetAlertConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.UpdateAlertConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :alert_config, 1,
    type: Google.Cloud.Retail.V2alpha.AlertConfig,
    json_name: "alertConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Retail.V2alpha.ProjectService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2alpha.ProjectService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetProject,
      Google.Cloud.Retail.V2alpha.GetProjectRequest,
      Google.Cloud.Retail.V2alpha.Project

  rpc :AcceptTerms,
      Google.Cloud.Retail.V2alpha.AcceptTermsRequest,
      Google.Cloud.Retail.V2alpha.Project

  rpc :EnrollSolution,
      Google.Cloud.Retail.V2alpha.EnrollSolutionRequest,
      Google.Longrunning.Operation

  rpc :ListEnrolledSolutions,
      Google.Cloud.Retail.V2alpha.ListEnrolledSolutionsRequest,
      Google.Cloud.Retail.V2alpha.ListEnrolledSolutionsResponse

  rpc :GetLoggingConfig,
      Google.Cloud.Retail.V2alpha.GetLoggingConfigRequest,
      Google.Cloud.Retail.V2alpha.LoggingConfig

  rpc :UpdateLoggingConfig,
      Google.Cloud.Retail.V2alpha.UpdateLoggingConfigRequest,
      Google.Cloud.Retail.V2alpha.LoggingConfig

  rpc :GetAlertConfig,
      Google.Cloud.Retail.V2alpha.GetAlertConfigRequest,
      Google.Cloud.Retail.V2alpha.AlertConfig

  rpc :UpdateAlertConfig,
      Google.Cloud.Retail.V2alpha.UpdateAlertConfigRequest,
      Google.Cloud.Retail.V2alpha.AlertConfig
end

defmodule Google.Cloud.Retail.V2alpha.ProjectService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2alpha.ProjectService.Service
end
